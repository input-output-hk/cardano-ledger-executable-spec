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
newtype HSMap k v = MkHSMap [(k, v)]
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
type UTxO  = HSMap TxIn TxOut
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
  , txouts :: HSMap Ix TxOut
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
  , txdats  :: HSMap DataHash Datum
  , txrdmrs :: HSMap RdmrPtr (Redeemer, ExUnits)
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
  { esCC           :: (Maybe (HSMap Credential Epoch, Rational), GovActionID)
  , esConstitution :: ((DataHash, Maybe ScriptHash), GovActionID)
  , esPV           :: (ProtVer, GovActionID)
  , esPParams      :: (PParams, GovActionID)
  , esWithdrawals  :: HSMap RwdAddr Coin
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
  | NewCommittee (HSMap Credential Epoch) [Credential] Rational
  | NewConstitution DataHash (Maybe ScriptHash)
  | TriggerHF ProtVer
  | ChangePParams PParamsUpdate
  | TreasuryWdrl (HSMap RwdAddr Coin)
  | Info

data Vote
  = VoteYes
  | VoteNo
  | VoteAbstain

data GovActionState = MkGovActionState
  { gasVotes :: HSMap Voter Vote
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
  , wdrls :: HSMap RwdAddr Coin
  }
data DState = MkDState
  { voteDelegs  :: HSMap Credential VDeleg
  , stakeDelegs :: HSMap Credential Credential
  , rewards     :: HSMap Credential Coin
  }
data PState = MkPState
  { pools :: HSMap Credential PoolParams
  , retiring :: HSMap Credential Epoch
  }
data GState = MkGState
  { dreps     :: HSMap Credential Epoch
  , ccHotKeys :: HSMap Credential (Maybe Credential)
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
d_HSMap_26 a0 a1 = ()
type T_HSMap_26 a0 a1 = HSMap a0 a1
pattern C_MkHSMap_36 a0 = MkHSMap a0
check_MkHSMap_36 ::
  forall xK.
    forall xV.
      MAlonzo.Code.Agda.Builtin.List.T_List_10
        () (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () xK xV) ->
      T_HSMap_26 xK xV
check_MkHSMap_36 = MkHSMap
cover_HSMap_26 :: HSMap a1 a2 -> ()
cover_HSMap_26 x
  = case x of
      MkHSMap _ -> ()
-- Ledger.Foreign.LedgerTypes.HSMap.assocList
d_assocList_34 ::
  T_HSMap_26 AgdaAny AgdaAny ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny AgdaAny AgdaAny]
d_assocList_34 v0
  = case coe v0 of
      C_MkHSMap_36 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Rational
d_Rational_38 :: ()
d_Rational_38 = erased
-- Ledger.Foreign.LedgerTypes.TxId
d_TxId_40 = ()
type T_TxId_40 = TxId
pattern C_TxId'46'constructor_283 a0 = MkTxId a0
check_TxId'46'constructor_283 :: Integer -> T_TxId_40
check_TxId'46'constructor_283 = MkTxId
cover_TxId_40 :: TxId -> ()
cover_TxId_40 x
  = case x of
      MkTxId _ -> ()
-- Ledger.Foreign.LedgerTypes.TxId.txid
d_txid_44 :: T_TxId_40 -> Integer
d_txid_44 v0
  = case coe v0 of
      C_TxId'46'constructor_283 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Coin
d_Coin_46 :: ()
d_Coin_46 = erased
-- Ledger.Foreign.LedgerTypes.Addr
d_Addr_48 :: ()
d_Addr_48 = erased
-- Ledger.Foreign.LedgerTypes.Ix
d_Ix_50 :: ()
d_Ix_50 = erased
-- Ledger.Foreign.LedgerTypes.Epoch
d_Epoch_52 :: ()
d_Epoch_52 = erased
-- Ledger.Foreign.LedgerTypes.ScriptHash
d_ScriptHash_54 :: ()
d_ScriptHash_54 = erased
-- Ledger.Foreign.LedgerTypes.AuxiliaryData
d_AuxiliaryData_56 :: ()
d_AuxiliaryData_56 = erased
-- Ledger.Foreign.LedgerTypes.DataHash
d_DataHash_58 :: ()
d_DataHash_58 = erased
-- Ledger.Foreign.LedgerTypes.Datum
d_Datum_60 :: ()
d_Datum_60 = erased
-- Ledger.Foreign.LedgerTypes.Redeemer
d_Redeemer_62 :: ()
d_Redeemer_62 = erased
-- Ledger.Foreign.LedgerTypes.Anchor
d_Anchor_64 :: ()
d_Anchor_64 = erased
-- Ledger.Foreign.LedgerTypes.Network
d_Network_66 :: ()
d_Network_66 = erased
-- Ledger.Foreign.LedgerTypes.PParamsUpdate
d_PParamsUpdate_68 :: ()
d_PParamsUpdate_68 = erased
-- Ledger.Foreign.LedgerTypes.Script
d_Script_70 :: ()
d_Script_70 = erased
-- Ledger.Foreign.LedgerTypes.TxIn
d_TxIn_72 :: ()
d_TxIn_72 = erased
-- Ledger.Foreign.LedgerTypes.TxOut
d_TxOut_74 :: ()
d_TxOut_74 = erased
-- Ledger.Foreign.LedgerTypes.UTxO
d_UTxO_76 :: ()
d_UTxO_76 = erased
-- Ledger.Foreign.LedgerTypes.Hash
d_Hash_78 :: ()
d_Hash_78 = erased
-- Ledger.Foreign.LedgerTypes.GovActionID
d_GovActionID_80 :: ()
d_GovActionID_80 = erased
-- Ledger.Foreign.LedgerTypes.HashProtected
d_HashProtected_82 :: () -> ()
d_HashProtected_82 = erased
-- Ledger.Foreign.LedgerTypes.Tag
d_Tag_86 = ()
type T_Tag_86 = Tag
pattern C_Spend_88 = Spend
pattern C_Mint_90 = Mint
pattern C_Cert_92 = Cert
pattern C_Rewrd_94 = Rewrd
pattern C_VoteTag_96 = Vote
pattern C_Propose_98 = Propose
check_Spend_88 :: T_Tag_86
check_Spend_88 = Spend
check_Mint_90 :: T_Tag_86
check_Mint_90 = Mint
check_Cert_92 :: T_Tag_86
check_Cert_92 = Cert
check_Rewrd_94 :: T_Tag_86
check_Rewrd_94 = Rewrd
check_VoteTag_96 :: T_Tag_86
check_VoteTag_96 = Vote
check_Propose_98 :: T_Tag_86
check_Propose_98 = Propose
cover_Tag_86 :: Tag -> ()
cover_Tag_86 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Foreign.LedgerTypes.RdmrPtr
d_RdmrPtr_100 :: ()
d_RdmrPtr_100 = erased
-- Ledger.Foreign.LedgerTypes.ExUnits
d_ExUnits_102 :: ()
d_ExUnits_102 = erased
-- Ledger.Foreign.LedgerTypes.ProtVer
d_ProtVer_104 :: ()
d_ProtVer_104 = erased
-- Ledger.Foreign.LedgerTypes.Credential
d_Credential_106 = ()
type T_Credential_106 = Credential
pattern C_ScriptObj_108 a0 = ScriptObj a0
pattern C_KeyHashObj_110 a0 = KeyHashObj a0
check_ScriptObj_108 :: Integer -> T_Credential_106
check_ScriptObj_108 = ScriptObj
check_KeyHashObj_110 :: Integer -> T_Credential_106
check_KeyHashObj_110 = KeyHashObj
cover_Credential_106 :: Credential -> ()
cover_Credential_106 x
  = case x of
      ScriptObj _ -> ()
      KeyHashObj _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolParams
d_PoolParams_112 :: ()
d_PoolParams_112 = erased
-- Ledger.Foreign.LedgerTypes.RwdAddr
d_RwdAddr_114 :: ()
d_RwdAddr_114 = erased
-- Ledger.Foreign.LedgerTypes.GovRole
d_GovRole_116 = ()
type T_GovRole_116 = GovRole
pattern C_CC_118 = CC
pattern C_DRep_120 = DRep
pattern C_SPO_122 = SPO
check_CC_118 :: T_GovRole_116
check_CC_118 = CC
check_DRep_120 :: T_GovRole_116
check_DRep_120 = DRep
check_SPO_122 :: T_GovRole_116
check_SPO_122 = SPO
cover_GovRole_116 :: GovRole -> ()
cover_GovRole_116 x
  = case x of
      CC -> ()
      DRep -> ()
      SPO -> ()
-- Ledger.Foreign.LedgerTypes.VDeleg
d_VDeleg_124 = ()
type T_VDeleg_124 = VDeleg
pattern C_CredVoter_126 a0 a1 = CredVoter a0 a1
pattern C_AbstainRep_128 = AbstainRep
pattern C_NoConfidenceRep_130 = NoConfidenceRep
check_CredVoter_126 ::
  T_GovRole_116 -> T_Credential_106 -> T_VDeleg_124
check_CredVoter_126 = CredVoter
check_AbstainRep_128 :: T_VDeleg_124
check_AbstainRep_128 = AbstainRep
check_NoConfidenceRep_130 :: T_VDeleg_124
check_NoConfidenceRep_130 = NoConfidenceRep
cover_VDeleg_124 :: VDeleg -> ()
cover_VDeleg_124 x
  = case x of
      CredVoter _ _ -> ()
      AbstainRep -> ()
      NoConfidenceRep -> ()
-- Ledger.Foreign.LedgerTypes.TxCert
d_TxCert_132 = ()
type T_TxCert_132 = TxCert
pattern C_Delegate_134 a0 a1 a2 a3 = Delegate a0 a1 a2 a3
pattern C_Dereg_136 a0 = Dereg a0
pattern C_RegPool_138 a0 a1 = RegPool a0 a1
pattern C_RetirePool_140 a0 a1 = RetirePool a0 a1
pattern C_RegDRep_142 a0 a1 a2 = RegDRep a0 a1 a2
pattern C_DeRegDRep_144 a0 = DeRegDRep a0
pattern C_CCRegHot_146 a0 a1 = CCRegHot a0 a1
check_Delegate_134 ::
  T_Credential_106 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_VDeleg_124 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_106 ->
  Integer -> T_TxCert_132
check_Delegate_134 = Delegate
check_Dereg_136 :: T_Credential_106 -> T_TxCert_132
check_Dereg_136 = Dereg
check_RegPool_138 ::
  T_Credential_106 -> T_Credential_106 -> T_TxCert_132
check_RegPool_138 = RegPool
check_RetirePool_140 :: T_Credential_106 -> Integer -> T_TxCert_132
check_RetirePool_140 = RetirePool
check_RegDRep_142 ::
  T_Credential_106 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_TxCert_132
check_RegDRep_142 = RegDRep
check_DeRegDRep_144 :: T_Credential_106 -> T_TxCert_132
check_DeRegDRep_144 = DeRegDRep
check_CCRegHot_146 ::
  T_Credential_106 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_106 ->
  T_TxCert_132
check_CCRegHot_146 = CCRegHot
cover_TxCert_132 :: TxCert -> ()
cover_TxCert_132 x
  = case x of
      Delegate _ _ _ _ -> ()
      Dereg _ -> ()
      RegPool _ _ -> ()
      RetirePool _ _ -> ()
      RegDRep _ _ _ -> ()
      DeRegDRep _ -> ()
      CCRegHot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_148 = ()
type T_TxBody_148 = TxBody
pattern C_TxBody'46'constructor_1491 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
check_TxBody'46'constructor_1491 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_40 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_40 Integer) ->
  T_HSMap_26
    Integer
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
                () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))) ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  Integer ->
  T_TxId_40 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_40 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_TxCert_132 ->
  T_TxBody_148
check_TxBody'46'constructor_1491 = MkTxBody
cover_TxBody_148 :: TxBody -> ()
cover_TxBody_148 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody.txins
d_txins_172 ::
  T_TxBody_148 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_40 Integer]
d_txins_172 v0
  = case coe v0 of
      C_TxBody'46'constructor_1491 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.refInputs
d_refInputs_174 ::
  T_TxBody_148 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_40 Integer]
d_refInputs_174 v0
  = case coe v0 of
      C_TxBody'46'constructor_1491 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txouts
d_txouts_176 ::
  T_TxBody_148 ->
  T_HSMap_26
    Integer
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
             (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))))
d_txouts_176 v0
  = case coe v0 of
      C_TxBody'46'constructor_1491 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_178 :: T_TxBody_148 -> Integer
d_txfee_178 v0
  = case coe v0 of
      C_TxBody'46'constructor_1491 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_180 ::
  T_TxBody_148 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_180 v0
  = case coe v0 of
      C_TxBody'46'constructor_1491 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_182 :: T_TxBody_148 -> Integer
d_txsize_182 v0
  = case coe v0 of
      C_TxBody'46'constructor_1491 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_184 :: T_TxBody_148 -> T_TxId_40
d_txid_184 v0
  = case coe v0 of
      C_TxBody'46'constructor_1491 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_186 ::
  T_TxBody_148 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_40 Integer]
d_collateral_186 v0
  = case coe v0 of
      C_TxBody'46'constructor_1491 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_188 :: T_TxBody_148 -> [Integer]
d_reqSigHash_188 v0
  = case coe v0 of
      C_TxBody'46'constructor_1491 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_190 :: T_TxBody_148 -> Maybe Integer
d_scriptIntHash_190 v0
  = case coe v0 of
      C_TxBody'46'constructor_1491 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txcerts
d_txcerts_192 :: T_TxBody_148 -> [T_TxCert_132]
d_txcerts_192 v0
  = case coe v0 of
      C_TxBody'46'constructor_1491 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_194 = ()
type T_TxWitnesses_194 = TxWitnesses
pattern C_TxWitnesses'46'constructor_1857 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_1857 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Empty_6 ->
  T_HSMap_26
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Tag_86 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer Integer)) ->
  T_TxWitnesses_194
check_TxWitnesses'46'constructor_1857 = MkTxWitnesses
cover_TxWitnesses_194 :: TxWitnesses -> ()
cover_TxWitnesses_194 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxWitnesses.vkSigs
d_vkSigs_204 ::
  T_TxWitnesses_194 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_vkSigs_204 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1857 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_206 :: T_TxWitnesses_194 -> [T_Empty_6]
d_scripts_206 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1857 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_208 ::
  T_TxWitnesses_194 ->
  T_HSMap_26
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txdats_208 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1857 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txrdmrs
d_txrdmrs_210 ::
  T_TxWitnesses_194 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_Tag_86 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer Integer))
d_txrdmrs_210 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1857 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_212 = ()
type T_Tx_212 = Tx
pattern C_Tx'46'constructor_1945 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_1945 ::
  T_TxBody_148 ->
  T_TxWitnesses_194 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_212
check_Tx'46'constructor_1945 = MkTx
cover_Tx_212 :: Tx -> ()
cover_Tx_212 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_220 :: T_Tx_212 -> T_TxBody_148
d_body_220 v0
  = case coe v0 of
      C_Tx'46'constructor_1945 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_222 :: T_Tx_212 -> T_TxWitnesses_194
d_wits_222 v0
  = case coe v0 of
      C_Tx'46'constructor_1945 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_224 ::
  T_Tx_212 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_224 v0
  = case coe v0 of
      C_Tx'46'constructor_1945 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_226 = ()
type T_PParams_226 = PParams
pattern C_PParams'46'constructor_2733 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24
check_PParams'46'constructor_2733 ::
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
  Integer -> Integer -> T_PParams_226
check_PParams'46'constructor_2733 = MkPParams
cover_PParams_226 :: PParams -> ()
cover_PParams_226 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_278 :: T_PParams_226 -> Integer
d_a_278 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_280 :: T_PParams_226 -> Integer
d_b_280 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_282 :: T_PParams_226 -> Integer
d_maxBlockSize_282 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_284 :: T_PParams_226 -> Integer
d_maxTxSize_284 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_286 :: T_PParams_226 -> Integer
d_maxHeaderSize_286 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_288 :: T_PParams_226 -> Integer
d_maxValSize_288 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_290 :: T_PParams_226 -> Integer
d_minUTxOValue_290 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_292 :: T_PParams_226 -> Integer
d_poolDeposit_292 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.keyDeposit
d_keyDeposit_294 :: T_PParams_226 -> Integer
d_keyDeposit_294 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_296 :: T_PParams_226 -> Integer
d_Emax_296 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.nopt
d_nopt_298 :: T_PParams_226 -> Integer
d_nopt_298 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_300 ::
  T_PParams_226 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_300 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.votingThresholds
d_votingThresholds_302 ::
  T_PParams_226 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_votingThresholds_302 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_304 :: T_PParams_226 -> Integer
d_govActionLifetime_304 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_306 :: T_PParams_226 -> Integer
d_govActionDeposit_306 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_308 :: T_PParams_226 -> Integer
d_drepDeposit_308 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_310 :: T_PParams_226 -> Integer
d_drepActivity_310 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_312 :: T_PParams_226 -> Integer
d_ccMinSize_312 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_314 :: T_PParams_226 -> Integer
d_ccMaxTermLength_314 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_316 ::
  T_PParams_226 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_316 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_318 ::
  T_PParams_226 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_318 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_320 ::
  T_PParams_226 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_320 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_322 ::
  T_PParams_226 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_322 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_324 :: T_PParams_226 -> Integer
d_coinsPerUTxOWord_324 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_326 :: T_PParams_226 -> Integer
d_maxCollateralInputs_326 v0
  = case coe v0 of
      C_PParams'46'constructor_2733 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_328 = ()
type T_UTxOEnv_328 = UTxOEnv
pattern C_UTxOEnv'46'constructor_4063 a0 a1 = MkUTxOEnv a0 a1
check_UTxOEnv'46'constructor_4063 ::
  Integer -> T_PParams_226 -> T_UTxOEnv_328
check_UTxOEnv'46'constructor_4063 = MkUTxOEnv
cover_UTxOEnv_328 :: UTxOEnv -> ()
cover_UTxOEnv_328 x
  = case x of
      MkUTxOEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_334 :: T_UTxOEnv_328 -> Integer
d_slot_334 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_4063 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_336 :: T_UTxOEnv_328 -> T_PParams_226
d_pparams_336 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_4063 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_338 = ()
type T_UTxOState_338 = UTxOState
pattern C_UTxOState'46'constructor_4105 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_4105 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_40 Integer)
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
                () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))) ->
  Integer -> T_UTxOState_338
check_UTxOState'46'constructor_4105 = MkUTxOState
cover_UTxOState_338 :: UTxOState -> ()
cover_UTxOState_338 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_344 ::
  T_UTxOState_338 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_40 Integer)
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
             (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6))))
d_utxo_344 v0
  = case coe v0 of
      C_UTxOState'46'constructor_4105 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_346 :: T_UTxOState_338 -> Integer
d_fees_346 v0
  = case coe v0 of
      C_UTxOState'46'constructor_4105 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState
d_EnactState_348 = ()
type T_EnactState_348 = EnactState
pattern C_EnactState'46'constructor_4211 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_EnactState'46'constructor_4211 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () (T_HSMap_26 T_Credential_106 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_40 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_40 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_40 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_PParams_226
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_40 Integer) ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_106)
    Integer ->
  T_EnactState_348
check_EnactState'46'constructor_4211 = MkEnactState
cover_EnactState_348 :: EnactState -> ()
cover_EnactState_348 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactState.esCC
d_esCC_360 ::
  T_EnactState_348 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (Maybe
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny (T_HSMap_26 T_Credential_106 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_40 Integer)
d_esCC_360 v0
  = case coe v0 of
      C_EnactState'46'constructor_4211 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esConstitution
d_esConstitution_362 ::
  T_EnactState_348 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (Maybe Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_40 Integer)
d_esConstitution_362 v0
  = case coe v0 of
      C_EnactState'46'constructor_4211 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPV
d_esPV_364 ::
  T_EnactState_348 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_40 Integer)
d_esPV_364 v0
  = case coe v0 of
      C_EnactState'46'constructor_4211 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPParams
d_esPParams_366 ::
  T_EnactState_348 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_PParams_226
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_40 Integer)
d_esPParams_366 v0
  = case coe v0 of
      C_EnactState'46'constructor_4211 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esWithdrawals
d_esWithdrawals_368 ::
  T_EnactState_348 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_106)
    Integer
d_esWithdrawals_368 v0
  = case coe v0 of
      C_EnactState'46'constructor_4211 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv
d_GovEnv_370 = ()
type T_GovEnv_370 = GovEnv
pattern C_GovEnv'46'constructor_4339 a0 a1 a2 a3 a4 = MkGovEnv a0 a1 a2 a3 a4
check_GovEnv'46'constructor_4339 ::
  T_TxId_40 ->
  Integer ->
  T_PParams_226 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_EnactState_348 -> T_GovEnv_370
check_GovEnv'46'constructor_4339 = MkGovEnv
cover_GovEnv_370 :: GovEnv -> ()
cover_GovEnv_370 x
  = case x of
      MkGovEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovEnv.geTxId
d_geTxId_382 :: T_GovEnv_370 -> T_TxId_40
d_geTxId_382 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4339 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEpoch
d_geEpoch_384 :: T_GovEnv_370 -> Integer
d_geEpoch_384 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4339 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePParams
d_gePParams_386 :: T_GovEnv_370 -> T_PParams_226
d_gePParams_386 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4339 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePPolicy
d_gePPolicy_388 :: T_GovEnv_370 -> Maybe Integer
d_gePPolicy_388 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4339 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEnactState
d_geEnactState_390 :: T_GovEnv_370 -> T_EnactState_348
d_geEnactState_390 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4339 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Voter
d_Voter_392 :: ()
d_Voter_392 = erased
-- Ledger.Foreign.LedgerTypes.GovAction
d_GovAction_394 = ()
type T_GovAction_394 = GovAction
pattern C_NoConfidence_396 = NoConfidence
pattern C_NewCommittee_398 a0 a1 a2 = NewCommittee a0 a1 a2
pattern C_NewConstitution_400 a0 a1 = NewConstitution a0 a1
pattern C_TriggerHF_402 a0 = TriggerHF a0
pattern C_ChangePParams_404 a0 = ChangePParams a0
pattern C_TreasuryWdrl_406 a0 = TreasuryWdrl a0
pattern C_Info_408 = Info
check_NoConfidence_396 :: T_GovAction_394
check_NoConfidence_396 = NoConfidence
check_NewCommittee_398 ::
  T_HSMap_26 T_Credential_106 Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Credential_106 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_394
check_NewCommittee_398 = NewCommittee
check_NewConstitution_400 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_GovAction_394
check_NewConstitution_400 = NewConstitution
check_TriggerHF_402 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_394
check_TriggerHF_402 = TriggerHF
check_ChangePParams_404 :: Integer -> T_GovAction_394
check_ChangePParams_404 = ChangePParams
check_TreasuryWdrl_406 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_106)
    Integer ->
  T_GovAction_394
check_TreasuryWdrl_406 = TreasuryWdrl
check_Info_408 :: T_GovAction_394
check_Info_408 = Info
cover_GovAction_394 :: GovAction -> ()
cover_GovAction_394 x
  = case x of
      NoConfidence -> ()
      NewCommittee _ _ _ -> ()
      NewConstitution _ _ -> ()
      TriggerHF _ -> ()
      ChangePParams _ -> ()
      TreasuryWdrl _ -> ()
      Info -> ()
-- Ledger.Foreign.LedgerTypes.Vote
d_Vote_410 = ()
type T_Vote_410 = Vote
pattern C_VoteYes_412 = VoteYes
pattern C_VoteNo_414 = VoteNo
pattern C_VoteAbstain_416 = VoteAbstain
check_VoteYes_412 :: T_Vote_410
check_VoteYes_412 = VoteYes
check_VoteNo_414 :: T_Vote_410
check_VoteNo_414 = VoteNo
check_VoteAbstain_416 :: T_Vote_410
check_VoteAbstain_416 = VoteAbstain
cover_Vote_410 :: Vote -> ()
cover_Vote_410 x
  = case x of
      VoteYes -> ()
      VoteNo -> ()
      VoteAbstain -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState
d_GovActionState_418 = ()
type T_GovActionState_418 = GovActionState
pattern C_GovActionState'46'constructor_4751 a0 a1 a2 a3 a4 = MkGovActionState a0 a1 a2 a3 a4
check_GovActionState'46'constructor_4751 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_GovRole_116 T_Credential_106)
    T_Vote_410 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_106 ->
  Integer ->
  T_GovAction_394 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_40 Integer ->
  T_GovActionState_418
check_GovActionState'46'constructor_4751 = MkGovActionState
cover_GovActionState_418 :: GovActionState -> ()
cover_GovActionState_418 x
  = case x of
      MkGovActionState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState.gasVotes
d_gasVotes_430 ::
  T_GovActionState_418 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_GovRole_116 T_Credential_106)
    T_Vote_410
d_gasVotes_430 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4751 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasReturnAddr
d_gasReturnAddr_432 ::
  T_GovActionState_418 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_106
d_gasReturnAddr_432 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4751 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasExpiresIn
d_gasExpiresIn_434 :: T_GovActionState_418 -> Integer
d_gasExpiresIn_434 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4751 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasAction
d_gasAction_436 :: T_GovActionState_418 -> T_GovAction_394
d_gasAction_436 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4751 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasPrevAction
d_gasPrevAction_438 ::
  T_GovActionState_418 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_40 Integer
d_gasPrevAction_438 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4751 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote
d_GovVote_440 = ()
type T_GovVote_440 = GovVote
pattern C_GovVote'46'constructor_4871 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_GovVote'46'constructor_4871 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_40 Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_116 T_Credential_106 ->
  T_Vote_410 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_GovVote_440
check_GovVote'46'constructor_4871 = MkGovVote
cover_GovVote_440 :: GovVote -> ()
cover_GovVote_440 x
  = case x of
      MkGovVote _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovVote.gvGid
d_gvGid_450 ::
  T_GovVote_440 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_40 Integer
d_gvGid_450 v0
  = case coe v0 of
      C_GovVote'46'constructor_4871 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVoter
d_gvVoter_452 ::
  T_GovVote_440 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_GovRole_116 T_Credential_106
d_gvVoter_452 v0
  = case coe v0 of
      C_GovVote'46'constructor_4871 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVote
d_gvVote_454 :: T_GovVote_440 -> T_Vote_410
d_gvVote_454 v0
  = case coe v0 of
      C_GovVote'46'constructor_4871 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvAnchor
d_gvAnchor_456 ::
  T_GovVote_440 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gvAnchor_456 v0
  = case coe v0 of
      C_GovVote'46'constructor_4871 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal
d_GovProposal_458 = ()
type T_GovProposal_458 = GovProposal
pattern C_GovProposal'46'constructor_4983 a0 a1 a2 a3 a4 a5 = MkGovProposal a0 a1 a2 a3 a4 a5
check_GovProposal'46'constructor_4983 ::
  T_GovAction_394 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_40 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_106 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_GovProposal_458
check_GovProposal'46'constructor_4983 = MkGovProposal
cover_GovProposal_458 :: GovProposal -> ()
cover_GovProposal_458 x
  = case x of
      MkGovProposal _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAction
d_gpAction_472 :: T_GovProposal_458 -> T_GovAction_394
d_gpAction_472 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4983 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPrevAction
d_gpPrevAction_474 ::
  T_GovProposal_458 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_40 Integer
d_gpPrevAction_474 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4983 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPolicy
d_gpPolicy_476 :: T_GovProposal_458 -> Maybe Integer
d_gpPolicy_476 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4983 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpDeposit
d_gpDeposit_478 :: T_GovProposal_458 -> Integer
d_gpDeposit_478 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4983 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpReturnAddr
d_gpReturnAddr_480 ::
  T_GovProposal_458 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_106
d_gpReturnAddr_480 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4983 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAnchor
d_gpAnchor_482 ::
  T_GovProposal_458 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gpAnchor_482 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4983 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovSignal
d_GovSignal_484 = ()
type T_GovSignal_484 = GovSignal
pattern C_GovSignalVote_486 a0 = GovSignalVote a0
pattern C_GovSignalProposal_488 a0 = GovSignalProposal a0
check_GovSignalVote_486 :: T_GovVote_440 -> T_GovSignal_484
check_GovSignalVote_486 = GovSignalVote
check_GovSignalProposal_488 :: T_GovProposal_458 -> T_GovSignal_484
check_GovSignalProposal_488 = GovSignalProposal
cover_GovSignal_484 :: GovSignal -> ()
cover_GovSignal_484 x
  = case x of
      GovSignalVote _ -> ()
      GovSignalProposal _ -> ()
-- Ledger.Foreign.LedgerTypes.GovState
d_GovState_490 :: ()
d_GovState_490 = erased
-- Ledger.Foreign.LedgerTypes.CertEnv
d_CertEnv_492 = ()
type T_CertEnv_492 = CertEnv
pattern C_CertEnv'46'constructor_5191 a0 a1 a2 a3 = MkCertEnv a0 a1 a2 a3
check_CertEnv'46'constructor_5191 ::
  Integer ->
  T_PParams_226 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_440 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_106)
    Integer ->
  T_CertEnv_492
check_CertEnv'46'constructor_5191 = MkCertEnv
cover_CertEnv_492 :: CertEnv -> ()
cover_CertEnv_492 x
  = case x of
      MkCertEnv _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv.epoch
d_epoch_502 :: T_CertEnv_492 -> Integer
d_epoch_502 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5191 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.pp
d_pp_504 :: T_CertEnv_492 -> T_PParams_226
d_pp_504 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5191 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.votes
d_votes_506 :: T_CertEnv_492 -> [T_GovVote_440]
d_votes_506 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5191 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.wdrls
d_wdrls_508 ::
  T_CertEnv_492 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_106)
    Integer
d_wdrls_508 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5191 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState
d_DState_510 = ()
type T_DState_510 = DState
pattern C_DState'46'constructor_5277 a0 a1 a2 = MkDState a0 a1 a2
check_DState'46'constructor_5277 ::
  T_HSMap_26 T_Credential_106 T_VDeleg_124 ->
  T_HSMap_26 T_Credential_106 T_Credential_106 ->
  T_HSMap_26 T_Credential_106 Integer -> T_DState_510
check_DState'46'constructor_5277 = MkDState
cover_DState_510 :: DState -> ()
cover_DState_510 x
  = case x of
      MkDState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState.voteDelegs
d_voteDelegs_518 ::
  T_DState_510 -> T_HSMap_26 T_Credential_106 T_VDeleg_124
d_voteDelegs_518 v0
  = case coe v0 of
      C_DState'46'constructor_5277 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.stakeDelegs
d_stakeDelegs_520 ::
  T_DState_510 -> T_HSMap_26 T_Credential_106 T_Credential_106
d_stakeDelegs_520 v0
  = case coe v0 of
      C_DState'46'constructor_5277 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.rewards
d_rewards_522 ::
  T_DState_510 -> T_HSMap_26 T_Credential_106 Integer
d_rewards_522 v0
  = case coe v0 of
      C_DState'46'constructor_5277 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState
d_PState_524 = ()
type T_PState_524 = PState
pattern C_PState'46'constructor_5339 a0 a1 = MkPState a0 a1
check_PState'46'constructor_5339 ::
  T_HSMap_26 T_Credential_106 T_Credential_106 ->
  T_HSMap_26 T_Credential_106 Integer -> T_PState_524
check_PState'46'constructor_5339 = MkPState
cover_PState_524 :: PState -> ()
cover_PState_524 x
  = case x of
      MkPState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PState.pools
d_pools_530 ::
  T_PState_524 -> T_HSMap_26 T_Credential_106 T_Credential_106
d_pools_530 v0
  = case coe v0 of
      C_PState'46'constructor_5339 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState.retiring
d_retiring_532 ::
  T_PState_524 -> T_HSMap_26 T_Credential_106 Integer
d_retiring_532 v0
  = case coe v0 of
      C_PState'46'constructor_5339 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState
d_GState_534 = ()
type T_GState_534 = GState
pattern C_GState'46'constructor_5397 a0 a1 = MkGState a0 a1
check_GState'46'constructor_5397 ::
  T_HSMap_26 T_Credential_106 Integer ->
  T_HSMap_26
    T_Credential_106
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_106) ->
  T_GState_534
check_GState'46'constructor_5397 = MkGState
cover_GState_534 :: GState -> ()
cover_GState_534 x
  = case x of
      MkGState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState.dreps
d_dreps_540 :: T_GState_534 -> T_HSMap_26 T_Credential_106 Integer
d_dreps_540 v0
  = case coe v0 of
      C_GState'46'constructor_5397 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState.ccHotKeys
d_ccHotKeys_542 ::
  T_GState_534 ->
  T_HSMap_26 T_Credential_106 (Maybe T_Credential_106)
d_ccHotKeys_542 v0
  = case coe v0 of
      C_GState'46'constructor_5397 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState
d_CertState_544 = ()
type T_CertState_544 = CertState
pattern C_CertState'46'constructor_5443 a0 a1 a2 = MkCertState a0 a1 a2
check_CertState'46'constructor_5443 ::
  T_DState_510 -> T_PState_524 -> T_GState_534 -> T_CertState_544
check_CertState'46'constructor_5443 = MkCertState
cover_CertState_544 :: CertState -> ()
cover_CertState_544 x
  = case x of
      MkCertState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState.dState
d_dState_552 :: T_CertState_544 -> T_DState_510
d_dState_552 v0
  = case coe v0 of
      C_CertState'46'constructor_5443 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.pState
d_pState_554 :: T_CertState_544 -> T_PState_524
d_pState_554 v0
  = case coe v0 of
      C_CertState'46'constructor_5443 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.gState
d_gState_556 :: T_CertState_544 -> T_GState_534
d_gState_556 v0
  = case coe v0 of
      C_CertState'46'constructor_5443 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
