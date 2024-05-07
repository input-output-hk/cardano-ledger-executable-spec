{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE EmptyDataDeriving #-}

module MAlonzo.Code.Ledger.Foreign.LedgerTypes where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Foreign.Haskell.Either
import qualified MAlonzo.Code.Foreign.Haskell.Pair

import GHC.Generics (Generic)
import Prelude hiding (Rational)
data AgdaEmpty deriving (Show, Generic)
data ComputationResult e a = Success a | Failure e
  deriving (Functor, Eq, Show, Generic)

instance Applicative (ComputationResult e) where
  pure = Success
  (Success f) <*> x = f <$> x
  (Failure e) <*> _ = Failure e

instance Monad (ComputationResult e) where
  return = pure
  (Success a) >>= m = m a
  (Failure e) >>= _ = Failure e
type Rational = (Integer, Integer)
type Coin  = Integer
type Addr  = Integer

newtype TxId = MkTxId Integer
  deriving (Generic, Show, Eq, Ord)
type Ix      = Integer
type Epoch   = Integer
type ScriptHash    = Integer
type PParamsUpdate = Integer

type AuxiliaryData = ()
type DataHash      = ()
type Datum         = ()
type Redeemer      = ()
type Anchor        = ()
type Network       = ()
type Script        = ()

type TxIn  = (TxId, Ix)
type TxOut = (Addr, (Coin, (Maybe (Either Datum DataHash), Maybe Script)))
type UTxO  = [(TxIn, TxOut)]
type Hash  = Integer

data Tag     = Spend | Mint | Cert | Rewrd | Vote | Propose deriving (Show, Generic)
type RdmrPtr = (Tag, Ix)
type ExUnits = (Integer, Integer)
type ProtVer = (Integer, Integer)
type GovActionID = (TxId, Integer)
data Credential
  = ScriptObj Integer
  | KeyHashObj Integer
  deriving (Show, Eq, Generic)
type PoolParams = Credential
type RwdAddr = (Network, Credential)

data GovRole
  = CC
  | DRep
  | SPO
  deriving (Show, Eq, Generic)
data VDeleg
  = CredVoter GovRole Credential
  | AbstainRep
  | NoConfidenceRep
  deriving (Show, Eq, Generic)
data TxCert
  = Delegate Credential (Maybe VDeleg) (Maybe Credential) Coin
  | Dereg Credential
  | RegPool Credential PoolParams
  | RetirePool Credential Epoch
  | RegDRep Credential Coin Anchor
  | DeRegDRep Credential
  | CCRegHot Credential (Maybe Credential)
  deriving (Show, Eq, Generic)
data TxBody = MkTxBody
  { txins  :: [TxIn]
  , refInputs :: [TxIn]
  , txouts :: [(Ix, TxOut)]
  , txfee  :: Coin
  , txvldt :: (Maybe Integer, Maybe Integer)
  , txsize :: Integer
  , txid   :: TxId
  , collateral    :: [TxIn]
  , reqSigHash    :: [Hash]
  , scriptIntHash :: Maybe Hash
  , txcerts :: [TxCert]
  } deriving (Show, Generic)
data TxWitnesses = MkTxWitnesses
  { vkSigs  :: [(Integer, Integer)]
  , scripts :: [AgdaEmpty]
  , txdats  :: [(DataHash, Datum)]
  , txrdmrs :: [(RdmrPtr, (Redeemer, ExUnits))]
  } deriving (Show, Generic)
data Tx = MkTx
  { body :: TxBody
  , wits :: TxWitnesses
  , txAD :: Maybe AuxiliaryData
  } deriving (Show, Generic)
data PParams = MkPParams
  { a                   :: Integer
  , b                   :: Integer
  , maxBlockSize        :: Integer
  , maxTxSize           :: Integer
  , maxHeaderSize       :: Integer
  , maxValSize          :: Integer
  , minUTxOValue        :: Coin
  , poolDeposit         :: Coin
  , keyDeposit          :: Coin
  , emax                :: Epoch
  , nopt                :: Integer
  , pv                  :: (Integer, Integer)
  , votingThresholds    :: ()
  , govActionLifetime   :: Integer
  , govActionDeposit    :: Coin
  , drepDeposit         :: Coin
  , drepActivity        :: Epoch
  , ccMinSize           :: Integer
  , ccMaxTermLength     :: Integer
  , costmdls            :: ()
  , prices              :: ()
  , maxTxExUnits        :: ExUnits
  , maxBlockExUnits     :: ExUnits
  , coinsPerUTxOWord    :: Coin
  , maxCollateralInputs :: Integer
  } deriving (Show, Generic)
data UTxOEnv = MkUTxOEnv
  { slot    :: Integer
  , pparams :: PParams
  } deriving (Show, Generic)
data UTxOState = MkUTxOState
  { utxo :: UTxO
  , fees :: Coin
  } deriving (Show, Generic)
data EnactState = MkEnactState
  { esCC           :: (Maybe ([(Credential, Epoch)], Rational), GovActionID)
  , esConstitution :: ((DataHash, Maybe ScriptHash), GovActionID)
  , esPV           :: (ProtVer, GovActionID)
  , esPParams      :: (PParams, GovActionID)
  , esWithdrawals  :: [(RwdAddr, Coin)]
  }
data GovEnv = MkGovEnv
  { geTxId :: TxId
  , geEpoch :: Epoch
  , gePParams :: PParams
  , gePPolicy :: Maybe ScriptHash
  , geEnactState :: EnactState
  }
type Voter = (GovRole, Credential)
type GovState = [(GovActionID, GovActionState)]

data GovAction
  = NoConfidence
  | NewCommittee [(Credential, Epoch)] [Credential] Rational
  | NewConstitution DataHash (Maybe ScriptHash)
  | TriggerHF ProtVer
  | ChangePParams PParamsUpdate
  | TreasuryWdrl [(RwdAddr, Coin)]
  | Info

data Vote
  = VoteYes
  | VoteNo
  | VoteAbstain

data GovActionState = MkGovActionState
  { gasVotes :: [(Voter, Vote)]
  , gasReturnAddr :: RwdAddr
  , gasExpiresIn :: Epoch
  , gasAction :: GovAction
  , gasPrevAction :: GovActionID
  }

data GovVote = MkGovVote
  { gvGid    :: GovActionID
  , gvVoter  :: Voter
  , gvVote   :: Vote
  , gvAnchor :: Maybe Anchor
  }

data GovProposal = MkGovProposal
  { gpAction     :: GovAction
  , gpPrevAction :: GovActionID
  , gpPolicy     :: Maybe ScriptHash
  , gpDeposit    :: Coin
  , gpReturnAddr :: RwdAddr
  , gpAnchor     :: Anchor
  }

data GovSignal
  = GovSignalVote GovVote
  | GovSignalProposal GovProposal
data CertEnv = MkCertEnv
  { epoch :: Epoch
  , pp    :: PParams
  , votes :: [GovVote]
  , wdrls :: [(RwdAddr, Coin)]
  }
data DState = MkDState
  { voteDelegs  :: [(Credential, VDeleg)]
  , stakeDelegs :: [(Credential, Credential)]
  , rewards     :: [(Credential, Coin)]
  }
data PState = MkPState
  { pools :: [(Credential, PoolParams)]
  , retiring :: [(Credential, Epoch)]
  }
data GState = MkGState
  { dreps     :: [(Credential, Epoch)]
  , ccHotKeys :: [(Credential, Maybe Credential)]
  }
data CertState = MkCertState
  { dState :: DState
  , pState :: PState
  , gState :: GState
  }
-- Ledger.Foreign.LedgerTypes.Empty
d_Empty_6 = ()
type T_Empty_6 = AgdaEmpty
cover_Empty_6 :: AgdaEmpty -> ()
cover_Empty_6 x = case x of
-- Ledger.Foreign.LedgerTypes.ComputationResult
d_ComputationResult_12 a0 a1 = ()
type T_ComputationResult_12 a0 a1 = ComputationResult a0 a1
pattern C_Success_18 a0 = Success a0
pattern C_Failure_20 a0 = Failure a0
check_Success_18 ::
  forall xE. forall xA. xA -> T_ComputationResult_12 xE xA
check_Success_18 = Success
check_Failure_20 ::
  forall xE. forall xA. xE -> T_ComputationResult_12 xE xA
check_Failure_20 = Failure
cover_ComputationResult_12 :: ComputationResult a1 a2 -> ()
cover_ComputationResult_12 x
  = case x of
      Success _ -> ()
      Failure _ -> ()
-- Ledger.Foreign.LedgerTypes.HSMap
d_HSMap_22 :: () -> () -> ()
d_HSMap_22 = erased
-- Ledger.Foreign.LedgerTypes.Rational
d_Rational_28 :: ()
d_Rational_28 = erased
-- Ledger.Foreign.LedgerTypes.TxId
d_TxId_30 = ()
type T_TxId_30 = TxId
pattern C_TxId'46'constructor_231 a0 = MkTxId a0
check_TxId'46'constructor_231 :: Integer -> T_TxId_30
check_TxId'46'constructor_231 = MkTxId
cover_TxId_30 :: TxId -> ()
cover_TxId_30 x
  = case x of
      MkTxId _ -> ()
-- Ledger.Foreign.LedgerTypes.TxId.txid
d_txid_34 :: T_TxId_30 -> Integer
d_txid_34 v0
  = case coe v0 of
      C_TxId'46'constructor_231 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Coin
d_Coin_36 :: ()
d_Coin_36 = erased
-- Ledger.Foreign.LedgerTypes.Addr
d_Addr_38 :: ()
d_Addr_38 = erased
-- Ledger.Foreign.LedgerTypes.Ix
d_Ix_40 :: ()
d_Ix_40 = erased
-- Ledger.Foreign.LedgerTypes.Epoch
d_Epoch_42 :: ()
d_Epoch_42 = erased
-- Ledger.Foreign.LedgerTypes.ScriptHash
d_ScriptHash_44 :: ()
d_ScriptHash_44 = erased
-- Ledger.Foreign.LedgerTypes.AuxiliaryData
d_AuxiliaryData_46 :: ()
d_AuxiliaryData_46 = erased
-- Ledger.Foreign.LedgerTypes.DataHash
d_DataHash_48 :: ()
d_DataHash_48 = erased
-- Ledger.Foreign.LedgerTypes.Datum
d_Datum_50 :: ()
d_Datum_50 = erased
-- Ledger.Foreign.LedgerTypes.Redeemer
d_Redeemer_52 :: ()
d_Redeemer_52 = erased
-- Ledger.Foreign.LedgerTypes.Anchor
d_Anchor_54 :: ()
d_Anchor_54 = erased
-- Ledger.Foreign.LedgerTypes.Network
d_Network_56 :: ()
d_Network_56 = erased
-- Ledger.Foreign.LedgerTypes.PParamsUpdate
d_PParamsUpdate_58 :: ()
d_PParamsUpdate_58 = erased
-- Ledger.Foreign.LedgerTypes.Script
d_Script_60 :: ()
d_Script_60 = erased
-- Ledger.Foreign.LedgerTypes.TxIn
d_TxIn_62 :: ()
d_TxIn_62 = erased
-- Ledger.Foreign.LedgerTypes.TxOut
d_TxOut_64 :: ()
d_TxOut_64 = erased
-- Ledger.Foreign.LedgerTypes.UTxO
d_UTxO_66 :: ()
d_UTxO_66 = erased
-- Ledger.Foreign.LedgerTypes.Hash
d_Hash_68 :: ()
d_Hash_68 = erased
-- Ledger.Foreign.LedgerTypes.GovActionID
d_GovActionID_70 :: ()
d_GovActionID_70 = erased
-- Ledger.Foreign.LedgerTypes.HashProtected
d_HashProtected_72 :: () -> ()
d_HashProtected_72 = erased
-- Ledger.Foreign.LedgerTypes.Tag
d_Tag_76 = ()
type T_Tag_76 = Tag
pattern C_Spend_78 = Spend
pattern C_Mint_80 = Mint
pattern C_Cert_82 = Cert
pattern C_Rewrd_84 = Rewrd
pattern C_VoteTag_86 = Vote
pattern C_Propose_88 = Propose
check_Spend_78 :: T_Tag_76
check_Spend_78 = Spend
check_Mint_80 :: T_Tag_76
check_Mint_80 = Mint
check_Cert_82 :: T_Tag_76
check_Cert_82 = Cert
check_Rewrd_84 :: T_Tag_76
check_Rewrd_84 = Rewrd
check_VoteTag_86 :: T_Tag_76
check_VoteTag_86 = Vote
check_Propose_88 :: T_Tag_76
check_Propose_88 = Propose
cover_Tag_76 :: Tag -> ()
cover_Tag_76 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Foreign.LedgerTypes.RdmrPtr
d_RdmrPtr_90 :: ()
d_RdmrPtr_90 = erased
-- Ledger.Foreign.LedgerTypes.ExUnits
d_ExUnits_92 :: ()
d_ExUnits_92 = erased
-- Ledger.Foreign.LedgerTypes.ProtVer
d_ProtVer_94 :: ()
d_ProtVer_94 = erased
-- Ledger.Foreign.LedgerTypes.Credential
d_Credential_96 = ()
type T_Credential_96 = Credential
pattern C_ScriptObj_98 a0 = ScriptObj a0
pattern C_KeyHashObj_100 a0 = KeyHashObj a0
check_ScriptObj_98 :: Integer -> T_Credential_96
check_ScriptObj_98 = ScriptObj
check_KeyHashObj_100 :: Integer -> T_Credential_96
check_KeyHashObj_100 = KeyHashObj
cover_Credential_96 :: Credential -> ()
cover_Credential_96 x
  = case x of
      ScriptObj _ -> ()
      KeyHashObj _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolParams
d_PoolParams_102 :: ()
d_PoolParams_102 = erased
-- Ledger.Foreign.LedgerTypes.RwdAddr
d_RwdAddr_104 :: ()
d_RwdAddr_104 = erased
-- Ledger.Foreign.LedgerTypes.GovRole
d_GovRole_106 = ()
type T_GovRole_106 = GovRole
pattern C_CC_108 = CC
pattern C_DRep_110 = DRep
pattern C_SPO_112 = SPO
check_CC_108 :: T_GovRole_106
check_CC_108 = CC
check_DRep_110 :: T_GovRole_106
check_DRep_110 = DRep
check_SPO_112 :: T_GovRole_106
check_SPO_112 = SPO
cover_GovRole_106 :: GovRole -> ()
cover_GovRole_106 x
  = case x of
      CC -> ()
      DRep -> ()
      SPO -> ()
-- Ledger.Foreign.LedgerTypes.VDeleg
d_VDeleg_114 = ()
type T_VDeleg_114 = VDeleg
pattern C_CredVoter_116 a0 a1 = CredVoter a0 a1
pattern C_AbstainRep_118 = AbstainRep
pattern C_NoConfidenceRep_120 = NoConfidenceRep
check_CredVoter_116 ::
  T_GovRole_106 -> T_Credential_96 -> T_VDeleg_114
check_CredVoter_116 = CredVoter
check_AbstainRep_118 :: T_VDeleg_114
check_AbstainRep_118 = AbstainRep
check_NoConfidenceRep_120 :: T_VDeleg_114
check_NoConfidenceRep_120 = NoConfidenceRep
cover_VDeleg_114 :: VDeleg -> ()
cover_VDeleg_114 x
  = case x of
      CredVoter _ _ -> ()
      AbstainRep -> ()
      NoConfidenceRep -> ()
-- Ledger.Foreign.LedgerTypes.TxCert
d_TxCert_122 = ()
type T_TxCert_122 = TxCert
pattern C_Delegate_124 a0 a1 a2 a3 = Delegate a0 a1 a2 a3
pattern C_Dereg_126 a0 = Dereg a0
pattern C_RegPool_128 a0 a1 = RegPool a0 a1
pattern C_RetirePool_130 a0 a1 = RetirePool a0 a1
pattern C_RegDRep_132 a0 a1 a2 = RegDRep a0 a1 a2
pattern C_DeRegDRep_134 a0 = DeRegDRep a0
pattern C_CCRegHot_136 a0 a1 = CCRegHot a0 a1
check_Delegate_124 ::
  T_Credential_96 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_VDeleg_114 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_96 ->
  Integer -> T_TxCert_122
check_Delegate_124 = Delegate
check_Dereg_126 :: T_Credential_96 -> T_TxCert_122
check_Dereg_126 = Dereg
check_RegPool_128 ::
  T_Credential_96 -> T_Credential_96 -> T_TxCert_122
check_RegPool_128 = RegPool
check_RetirePool_130 :: T_Credential_96 -> Integer -> T_TxCert_122
check_RetirePool_130 = RetirePool
check_RegDRep_132 ::
  T_Credential_96 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_TxCert_122
check_RegDRep_132 = RegDRep
check_DeRegDRep_134 :: T_Credential_96 -> T_TxCert_122
check_DeRegDRep_134 = DeRegDRep
check_CCRegHot_136 ::
  T_Credential_96 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_96 ->
  T_TxCert_122
check_CCRegHot_136 = CCRegHot
cover_TxCert_122 :: TxCert -> ()
cover_TxCert_122 x
  = case x of
      Delegate _ _ _ _ -> ()
      Dereg _ -> ()
      RegPool _ _ -> ()
      RetirePool _ _ -> ()
      RegDRep _ _ _ -> ()
      DeRegDRep _ -> ()
      CCRegHot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_138 = ()
type T_TxBody_138 = TxBody
pattern C_TxBody'46'constructor_1439 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
check_TxBody'46'constructor_1439 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_30 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_30 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer
             (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
                () ()
                (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                   ()
                   (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                      () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
                      MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))
                (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                   () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))))) ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  Integer ->
  T_TxId_30 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_30 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_TxCert_122 ->
  T_TxBody_138
check_TxBody'46'constructor_1439 = MkTxBody
cover_TxBody_138 :: TxBody -> ()
cover_TxBody_138 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody.txins
d_txins_162 ::
  T_TxBody_138 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_30 Integer]
d_txins_162 v0
  = case coe v0 of
      C_TxBody'46'constructor_1439 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.refInputs
d_refInputs_164 ::
  T_TxBody_138 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_30 Integer]
d_refInputs_164 v0
  = case coe v0 of
      C_TxBody'46'constructor_1439 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txouts
d_txouts_166 ::
  T_TxBody_138 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer
           (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
              AgdaAny AgdaAny
              (Maybe
                 (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
                    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))
              (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))))]
d_txouts_166 v0
  = case coe v0 of
      C_TxBody'46'constructor_1439 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_168 :: T_TxBody_138 -> Integer
d_txfee_168 v0
  = case coe v0 of
      C_TxBody'46'constructor_1439 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_170 ::
  T_TxBody_138 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_170 v0
  = case coe v0 of
      C_TxBody'46'constructor_1439 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_172 :: T_TxBody_138 -> Integer
d_txsize_172 v0
  = case coe v0 of
      C_TxBody'46'constructor_1439 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_174 :: T_TxBody_138 -> T_TxId_30
d_txid_174 v0
  = case coe v0 of
      C_TxBody'46'constructor_1439 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_176 ::
  T_TxBody_138 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_30 Integer]
d_collateral_176 v0
  = case coe v0 of
      C_TxBody'46'constructor_1439 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_178 :: T_TxBody_138 -> [Integer]
d_reqSigHash_178 v0
  = case coe v0 of
      C_TxBody'46'constructor_1439 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_180 :: T_TxBody_138 -> Maybe Integer
d_scriptIntHash_180 v0
  = case coe v0 of
      C_TxBody'46'constructor_1439 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txcerts
d_txcerts_182 :: T_TxBody_138 -> [T_TxCert_122]
d_txcerts_182 v0
  = case coe v0 of
      C_TxBody'46'constructor_1439 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_184 = ()
type T_TxWitnesses_184 = TxWitnesses
pattern C_TxWitnesses'46'constructor_1805 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_1805 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Empty_6 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_Tag_76 Integer)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer Integer))) ->
  T_TxWitnesses_184
check_TxWitnesses'46'constructor_1805 = MkTxWitnesses
cover_TxWitnesses_184 :: TxWitnesses -> ()
cover_TxWitnesses_184 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxWitnesses.vkSigs
d_vkSigs_194 ::
  T_TxWitnesses_184 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_vkSigs_194 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1805 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_196 :: T_TxWitnesses_184 -> [T_Empty_6]
d_scripts_196 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1805 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_198 ::
  T_TxWitnesses_184 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
     MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6]
d_txdats_198 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1805 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txrdmrs
d_txrdmrs_200 ::
  T_TxWitnesses_184 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_Tag_76 Integer)
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer Integer))]
d_txrdmrs_200 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1805 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_202 = ()
type T_Tx_202 = Tx
pattern C_Tx'46'constructor_1893 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_1893 ::
  T_TxBody_138 ->
  T_TxWitnesses_184 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_202
check_Tx'46'constructor_1893 = MkTx
cover_Tx_202 :: Tx -> ()
cover_Tx_202 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_210 :: T_Tx_202 -> T_TxBody_138
d_body_210 v0
  = case coe v0 of
      C_Tx'46'constructor_1893 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_212 :: T_Tx_202 -> T_TxWitnesses_184
d_wits_212 v0
  = case coe v0 of
      C_Tx'46'constructor_1893 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_214 ::
  T_Tx_202 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_214 v0
  = case coe v0 of
      C_Tx'46'constructor_1893 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_216 = ()
type T_PParams_216 = PParams
pattern C_PParams'46'constructor_2681 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24
check_PParams'46'constructor_2681 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  Integer -> Integer -> T_PParams_216
check_PParams'46'constructor_2681 = MkPParams
cover_PParams_216 :: PParams -> ()
cover_PParams_216 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_268 :: T_PParams_216 -> Integer
d_a_268 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_270 :: T_PParams_216 -> Integer
d_b_270 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_272 :: T_PParams_216 -> Integer
d_maxBlockSize_272 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_274 :: T_PParams_216 -> Integer
d_maxTxSize_274 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_276 :: T_PParams_216 -> Integer
d_maxHeaderSize_276 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_278 :: T_PParams_216 -> Integer
d_maxValSize_278 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_280 :: T_PParams_216 -> Integer
d_minUTxOValue_280 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_282 :: T_PParams_216 -> Integer
d_poolDeposit_282 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.keyDeposit
d_keyDeposit_284 :: T_PParams_216 -> Integer
d_keyDeposit_284 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_286 :: T_PParams_216 -> Integer
d_Emax_286 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.nopt
d_nopt_288 :: T_PParams_216 -> Integer
d_nopt_288 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_290 ::
  T_PParams_216 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_290 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.votingThresholds
d_votingThresholds_292 ::
  T_PParams_216 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_votingThresholds_292 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_294 :: T_PParams_216 -> Integer
d_govActionLifetime_294 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_296 :: T_PParams_216 -> Integer
d_govActionDeposit_296 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_298 :: T_PParams_216 -> Integer
d_drepDeposit_298 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_300 :: T_PParams_216 -> Integer
d_drepActivity_300 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_302 :: T_PParams_216 -> Integer
d_ccMinSize_302 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_304 :: T_PParams_216 -> Integer
d_ccMaxTermLength_304 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_306 ::
  T_PParams_216 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_306 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_308 ::
  T_PParams_216 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_308 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_310 ::
  T_PParams_216 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_310 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_312 ::
  T_PParams_216 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_312 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_314 :: T_PParams_216 -> Integer
d_coinsPerUTxOWord_314 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_316 :: T_PParams_216 -> Integer
d_maxCollateralInputs_316 v0
  = case coe v0 of
      C_PParams'46'constructor_2681 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_318 = ()
type T_UTxOEnv_318 = UTxOEnv
pattern C_UTxOEnv'46'constructor_4011 a0 a1 = MkUTxOEnv a0 a1
check_UTxOEnv'46'constructor_4011 ::
  Integer -> T_PParams_216 -> T_UTxOEnv_318
check_UTxOEnv'46'constructor_4011 = MkUTxOEnv
cover_UTxOEnv_318 :: UTxOEnv -> ()
cover_UTxOEnv_318 x
  = case x of
      MkUTxOEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_324 :: T_UTxOEnv_318 -> Integer
d_slot_324 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_4011 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_326 :: T_UTxOEnv_318 -> T_PParams_216
d_pparams_326 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_4011 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_328 = ()
type T_UTxOState_328 = UTxOState
pattern C_UTxOState'46'constructor_4053 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_4053 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_30 Integer)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer
             (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
                () ()
                (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                   ()
                   (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                      () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
                      MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))
                (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                   () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))))) ->
  Integer -> T_UTxOState_328
check_UTxOState'46'constructor_4053 = MkUTxOState
cover_UTxOState_328 :: UTxOState -> ()
cover_UTxOState_328 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_334 ::
  T_UTxOState_328 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_TxId_30 Integer)
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer
           (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
              AgdaAny AgdaAny
              (Maybe
                 (MAlonzo.Code.Foreign.Haskell.Either.T_Either_22
                    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
                    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))
              (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))))]
d_utxo_334 v0
  = case coe v0 of
      C_UTxOState'46'constructor_4053 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_336 :: T_UTxOState_328 -> Integer
d_fees_336 v0
  = case coe v0 of
      C_UTxOState'46'constructor_4053 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState
d_EnactState_338 = ()
type T_EnactState_338 = EnactState
pattern C_EnactState'46'constructor_4159 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_EnactState'46'constructor_4159 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () ()
          (MAlonzo.Code.Agda.Builtin.List.T_List_10
             ()
             (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
                () () T_Credential_96 Integer))
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_30 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_30 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_30 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_PParams_216
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_30 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_96)
       Integer) ->
  T_EnactState_338
check_EnactState'46'constructor_4159 = MkEnactState
cover_EnactState_338 :: EnactState -> ()
cover_EnactState_338 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactState.esCC
d_esCC_350 ::
  T_EnactState_338 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (Maybe
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny
          [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny T_Credential_96 Integer]
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_30 Integer)
d_esCC_350 v0
  = case coe v0 of
      C_EnactState'46'constructor_4159 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esConstitution
d_esConstitution_352 ::
  T_EnactState_338 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (Maybe Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_30 Integer)
d_esConstitution_352 v0
  = case coe v0 of
      C_EnactState'46'constructor_4159 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPV
d_esPV_354 ::
  T_EnactState_338 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_30 Integer)
d_esPV_354 v0
  = case coe v0 of
      C_EnactState'46'constructor_4159 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPParams
d_esPParams_356 ::
  T_EnactState_338 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_PParams_216
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_30 Integer)
d_esPParams_356 v0
  = case coe v0 of
      C_EnactState'46'constructor_4159 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esWithdrawals
d_esWithdrawals_358 ::
  T_EnactState_338 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
        T_Credential_96)
     Integer]
d_esWithdrawals_358 v0
  = case coe v0 of
      C_EnactState'46'constructor_4159 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv
d_GovEnv_360 = ()
type T_GovEnv_360 = GovEnv
pattern C_GovEnv'46'constructor_4287 a0 a1 a2 a3 a4 = MkGovEnv a0 a1 a2 a3 a4
check_GovEnv'46'constructor_4287 ::
  T_TxId_30 ->
  Integer ->
  T_PParams_216 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_EnactState_338 -> T_GovEnv_360
check_GovEnv'46'constructor_4287 = MkGovEnv
cover_GovEnv_360 :: GovEnv -> ()
cover_GovEnv_360 x
  = case x of
      MkGovEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovEnv.geTxId
d_geTxId_372 :: T_GovEnv_360 -> T_TxId_30
d_geTxId_372 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4287 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEpoch
d_geEpoch_374 :: T_GovEnv_360 -> Integer
d_geEpoch_374 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4287 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePParams
d_gePParams_376 :: T_GovEnv_360 -> T_PParams_216
d_gePParams_376 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4287 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePPolicy
d_gePPolicy_378 :: T_GovEnv_360 -> Maybe Integer
d_gePPolicy_378 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4287 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEnactState
d_geEnactState_380 :: T_GovEnv_360 -> T_EnactState_338
d_geEnactState_380 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4287 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Voter
d_Voter_382 :: ()
d_Voter_382 = erased
-- Ledger.Foreign.LedgerTypes.GovAction
d_GovAction_384 = ()
type T_GovAction_384 = GovAction
pattern C_NoConfidence_386 = NoConfidence
pattern C_NewCommittee_388 a0 a1 a2 = NewCommittee a0 a1 a2
pattern C_NewConstitution_390 a0 a1 = NewConstitution a0 a1
pattern C_TriggerHF_392 a0 = TriggerHF a0
pattern C_ChangePParams_394 a0 = ChangePParams a0
pattern C_TreasuryWdrl_396 a0 = TreasuryWdrl a0
pattern C_Info_398 = Info
check_NoConfidence_386 :: T_GovAction_384
check_NoConfidence_386 = NoConfidence
check_NewCommittee_388 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Credential_96 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Credential_96 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_384
check_NewCommittee_388 = NewCommittee
check_NewConstitution_390 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_GovAction_384
check_NewConstitution_390 = NewConstitution
check_TriggerHF_392 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_384
check_TriggerHF_392 = TriggerHF
check_ChangePParams_394 :: Integer -> T_GovAction_384
check_ChangePParams_394 = ChangePParams
check_TreasuryWdrl_396 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_96)
       Integer) ->
  T_GovAction_384
check_TreasuryWdrl_396 = TreasuryWdrl
check_Info_398 :: T_GovAction_384
check_Info_398 = Info
cover_GovAction_384 :: GovAction -> ()
cover_GovAction_384 x
  = case x of
      NoConfidence -> ()
      NewCommittee _ _ _ -> ()
      NewConstitution _ _ -> ()
      TriggerHF _ -> ()
      ChangePParams _ -> ()
      TreasuryWdrl _ -> ()
      Info -> ()
-- Ledger.Foreign.LedgerTypes.Vote
d_Vote_400 = ()
type T_Vote_400 = Vote
pattern C_VoteYes_402 = VoteYes
pattern C_VoteNo_404 = VoteNo
pattern C_VoteAbstain_406 = VoteAbstain
check_VoteYes_402 :: T_Vote_400
check_VoteYes_402 = VoteYes
check_VoteNo_404 :: T_Vote_400
check_VoteNo_404 = VoteNo
check_VoteAbstain_406 :: T_Vote_400
check_VoteAbstain_406 = VoteAbstain
cover_Vote_400 :: Vote -> ()
cover_Vote_400 x
  = case x of
      VoteYes -> ()
      VoteNo -> ()
      VoteAbstain -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState
d_GovActionState_408 = ()
type T_GovActionState_408 = GovActionState
pattern C_GovActionState'46'constructor_4699 a0 a1 a2 a3 a4 = MkGovActionState a0 a1 a2 a3 a4
check_GovActionState'46'constructor_4699 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_GovRole_106 T_Credential_96)
       T_Vote_400) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_96 ->
  Integer ->
  T_GovAction_384 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_30 Integer ->
  T_GovActionState_408
check_GovActionState'46'constructor_4699 = MkGovActionState
cover_GovActionState_408 :: GovActionState -> ()
cover_GovActionState_408 x
  = case x of
      MkGovActionState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState.gasVotes
d_gasVotes_420 ::
  T_GovActionState_408 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_GovRole_106 T_Credential_96)
     T_Vote_400]
d_gasVotes_420 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4699 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasReturnAddr
d_gasReturnAddr_422 ::
  T_GovActionState_408 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_96
d_gasReturnAddr_422 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4699 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasExpiresIn
d_gasExpiresIn_424 :: T_GovActionState_408 -> Integer
d_gasExpiresIn_424 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4699 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasAction
d_gasAction_426 :: T_GovActionState_408 -> T_GovAction_384
d_gasAction_426 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4699 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasPrevAction
d_gasPrevAction_428 ::
  T_GovActionState_408 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_30 Integer
d_gasPrevAction_428 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4699 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote
d_GovVote_430 = ()
type T_GovVote_430 = GovVote
pattern C_GovVote'46'constructor_4819 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_GovVote'46'constructor_4819 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_30 Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_106 T_Credential_96 ->
  T_Vote_400 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_GovVote_430
check_GovVote'46'constructor_4819 = MkGovVote
cover_GovVote_430 :: GovVote -> ()
cover_GovVote_430 x
  = case x of
      MkGovVote _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovVote.gvGid
d_gvGid_440 ::
  T_GovVote_430 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_30 Integer
d_gvGid_440 v0
  = case coe v0 of
      C_GovVote'46'constructor_4819 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVoter
d_gvVoter_442 ::
  T_GovVote_430 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_GovRole_106 T_Credential_96
d_gvVoter_442 v0
  = case coe v0 of
      C_GovVote'46'constructor_4819 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVote
d_gvVote_444 :: T_GovVote_430 -> T_Vote_400
d_gvVote_444 v0
  = case coe v0 of
      C_GovVote'46'constructor_4819 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvAnchor
d_gvAnchor_446 ::
  T_GovVote_430 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gvAnchor_446 v0
  = case coe v0 of
      C_GovVote'46'constructor_4819 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal
d_GovProposal_448 = ()
type T_GovProposal_448 = GovProposal
pattern C_GovProposal'46'constructor_4931 a0 a1 a2 a3 a4 a5 = MkGovProposal a0 a1 a2 a3 a4 a5
check_GovProposal'46'constructor_4931 ::
  T_GovAction_384 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_30 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_96 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_GovProposal_448
check_GovProposal'46'constructor_4931 = MkGovProposal
cover_GovProposal_448 :: GovProposal -> ()
cover_GovProposal_448 x
  = case x of
      MkGovProposal _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAction
d_gpAction_462 :: T_GovProposal_448 -> T_GovAction_384
d_gpAction_462 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4931 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPrevAction
d_gpPrevAction_464 ::
  T_GovProposal_448 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_30 Integer
d_gpPrevAction_464 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4931 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPolicy
d_gpPolicy_466 :: T_GovProposal_448 -> Maybe Integer
d_gpPolicy_466 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4931 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpDeposit
d_gpDeposit_468 :: T_GovProposal_448 -> Integer
d_gpDeposit_468 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4931 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpReturnAddr
d_gpReturnAddr_470 ::
  T_GovProposal_448 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_96
d_gpReturnAddr_470 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4931 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAnchor
d_gpAnchor_472 ::
  T_GovProposal_448 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gpAnchor_472 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4931 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovSignal
d_GovSignal_474 = ()
type T_GovSignal_474 = GovSignal
pattern C_GovSignalVote_476 a0 = GovSignalVote a0
pattern C_GovSignalProposal_478 a0 = GovSignalProposal a0
check_GovSignalVote_476 :: T_GovVote_430 -> T_GovSignal_474
check_GovSignalVote_476 = GovSignalVote
check_GovSignalProposal_478 :: T_GovProposal_448 -> T_GovSignal_474
check_GovSignalProposal_478 = GovSignalProposal
cover_GovSignal_474 :: GovSignal -> ()
cover_GovSignal_474 x
  = case x of
      GovSignalVote _ -> ()
      GovSignalProposal _ -> ()
-- Ledger.Foreign.LedgerTypes.GovState
d_GovState_480 :: ()
d_GovState_480 = erased
-- Ledger.Foreign.LedgerTypes.CertEnv
d_CertEnv_482 = ()
type T_CertEnv_482 = CertEnv
pattern C_CertEnv'46'constructor_5139 a0 a1 a2 a3 = MkCertEnv a0 a1 a2 a3
check_CertEnv'46'constructor_5139 ::
  Integer ->
  T_PParams_216 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_430 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_96)
       Integer) ->
  T_CertEnv_482
check_CertEnv'46'constructor_5139 = MkCertEnv
cover_CertEnv_482 :: CertEnv -> ()
cover_CertEnv_482 x
  = case x of
      MkCertEnv _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv.epoch
d_epoch_492 :: T_CertEnv_482 -> Integer
d_epoch_492 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5139 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.pp
d_pp_494 :: T_CertEnv_482 -> T_PParams_216
d_pp_494 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5139 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.votes
d_votes_496 :: T_CertEnv_482 -> [T_GovVote_430]
d_votes_496 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5139 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.wdrls
d_wdrls_498 ::
  T_CertEnv_482 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
        T_Credential_96)
     Integer]
d_wdrls_498 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5139 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState
d_DState_500 = ()
type T_DState_500 = DState
pattern C_DState'46'constructor_5225 a0 a1 a2 = MkDState a0 a1 a2
check_DState'46'constructor_5225 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Credential_96 T_VDeleg_114) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Credential_96 T_Credential_96) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Credential_96 Integer) ->
  T_DState_500
check_DState'46'constructor_5225 = MkDState
cover_DState_500 :: DState -> ()
cover_DState_500 x
  = case x of
      MkDState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState.voteDelegs
d_voteDelegs_508 ::
  T_DState_500 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_Credential_96 T_VDeleg_114]
d_voteDelegs_508 v0
  = case coe v0 of
      C_DState'46'constructor_5225 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.stakeDelegs
d_stakeDelegs_510 ::
  T_DState_500 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_Credential_96 T_Credential_96]
d_stakeDelegs_510 v0
  = case coe v0 of
      C_DState'46'constructor_5225 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.rewards
d_rewards_512 ::
  T_DState_500 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_Credential_96 Integer]
d_rewards_512 v0
  = case coe v0 of
      C_DState'46'constructor_5225 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState
d_PState_514 = ()
type T_PState_514 = PState
pattern C_PState'46'constructor_5287 a0 a1 = MkPState a0 a1
check_PState'46'constructor_5287 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Credential_96 T_Credential_96) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Credential_96 Integer) ->
  T_PState_514
check_PState'46'constructor_5287 = MkPState
cover_PState_514 :: PState -> ()
cover_PState_514 x
  = case x of
      MkPState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PState.pools
d_pools_520 ::
  T_PState_514 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_Credential_96 T_Credential_96]
d_pools_520 v0
  = case coe v0 of
      C_PState'46'constructor_5287 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState.retiring
d_retiring_522 ::
  T_PState_514 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_Credential_96 Integer]
d_retiring_522 v0
  = case coe v0 of
      C_PState'46'constructor_5287 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState
d_GState_524 = ()
type T_GState_524 = GState
pattern C_GState'46'constructor_5345 a0 a1 = MkGState a0 a1
check_GState'46'constructor_5345 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Credential_96 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Credential_96
       (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_96)) ->
  T_GState_524
check_GState'46'constructor_5345 = MkGState
cover_GState_524 :: GState -> ()
cover_GState_524 x
  = case x of
      MkGState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState.dreps
d_dreps_530 ::
  T_GState_524 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_Credential_96 Integer]
d_dreps_530 v0
  = case coe v0 of
      C_GState'46'constructor_5345 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState.ccHotKeys
d_ccHotKeys_532 ::
  T_GState_524 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_Credential_96 (Maybe T_Credential_96)]
d_ccHotKeys_532 v0
  = case coe v0 of
      C_GState'46'constructor_5345 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState
d_CertState_534 = ()
type T_CertState_534 = CertState
pattern C_CertState'46'constructor_5391 a0 a1 a2 = MkCertState a0 a1 a2
check_CertState'46'constructor_5391 ::
  T_DState_500 -> T_PState_514 -> T_GState_524 -> T_CertState_534
check_CertState'46'constructor_5391 = MkCertState
cover_CertState_534 :: CertState -> ()
cover_CertState_534 x
  = case x of
      MkCertState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState.dState
d_dState_542 :: T_CertState_534 -> T_DState_500
d_dState_542 v0
  = case coe v0 of
      C_CertState'46'constructor_5391 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.pState
d_pState_544 :: T_CertState_534 -> T_PState_514
d_pState_544 v0
  = case coe v0 of
      C_CertState'46'constructor_5391 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.gState
d_gState_546 :: T_CertState_534 -> T_GState_524
d_gState_546 v0
  = case coe v0 of
      C_CertState'46'constructor_5391 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
