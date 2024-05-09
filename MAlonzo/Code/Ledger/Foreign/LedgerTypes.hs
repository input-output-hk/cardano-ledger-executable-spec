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
pattern C_HSMap'46'constructor_215 a0 = MkHSMap a0
check_HSMap'46'constructor_215 ::
  forall xK.
    forall xV.
      MAlonzo.Code.Agda.Builtin.List.T_List_10
        () (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () xK xV) ->
      T_HSMap_26 xK xV
check_HSMap'46'constructor_215 = MkHSMap
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
      C_HSMap'46'constructor_215 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Rational
d_Rational_36 :: ()
d_Rational_36 = erased
-- Ledger.Foreign.LedgerTypes.TxId
d_TxId_38 = ()
type T_TxId_38 = TxId
pattern C_TxId'46'constructor_285 a0 = MkTxId a0
check_TxId'46'constructor_285 :: Integer -> T_TxId_38
check_TxId'46'constructor_285 = MkTxId
cover_TxId_38 :: TxId -> ()
cover_TxId_38 x
  = case x of
      MkTxId _ -> ()
-- Ledger.Foreign.LedgerTypes.TxId.txid
d_txid_42 :: T_TxId_38 -> Integer
d_txid_42 v0
  = case coe v0 of
      C_TxId'46'constructor_285 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Coin
d_Coin_44 :: ()
d_Coin_44 = erased
-- Ledger.Foreign.LedgerTypes.Addr
d_Addr_46 :: ()
d_Addr_46 = erased
-- Ledger.Foreign.LedgerTypes.Ix
d_Ix_48 :: ()
d_Ix_48 = erased
-- Ledger.Foreign.LedgerTypes.Epoch
d_Epoch_50 :: ()
d_Epoch_50 = erased
-- Ledger.Foreign.LedgerTypes.ScriptHash
d_ScriptHash_52 :: ()
d_ScriptHash_52 = erased
-- Ledger.Foreign.LedgerTypes.AuxiliaryData
d_AuxiliaryData_54 :: ()
d_AuxiliaryData_54 = erased
-- Ledger.Foreign.LedgerTypes.DataHash
d_DataHash_56 :: ()
d_DataHash_56 = erased
-- Ledger.Foreign.LedgerTypes.Datum
d_Datum_58 :: ()
d_Datum_58 = erased
-- Ledger.Foreign.LedgerTypes.Redeemer
d_Redeemer_60 :: ()
d_Redeemer_60 = erased
-- Ledger.Foreign.LedgerTypes.Anchor
d_Anchor_62 :: ()
d_Anchor_62 = erased
-- Ledger.Foreign.LedgerTypes.Network
d_Network_64 :: ()
d_Network_64 = erased
-- Ledger.Foreign.LedgerTypes.PParamsUpdate
d_PParamsUpdate_66 :: ()
d_PParamsUpdate_66 = erased
-- Ledger.Foreign.LedgerTypes.Script
d_Script_68 :: ()
d_Script_68 = erased
-- Ledger.Foreign.LedgerTypes.TxIn
d_TxIn_70 :: ()
d_TxIn_70 = erased
-- Ledger.Foreign.LedgerTypes.TxOut
d_TxOut_72 :: ()
d_TxOut_72 = erased
-- Ledger.Foreign.LedgerTypes.UTxO
d_UTxO_74 :: ()
d_UTxO_74 = erased
-- Ledger.Foreign.LedgerTypes.Hash
d_Hash_76 :: ()
d_Hash_76 = erased
-- Ledger.Foreign.LedgerTypes.GovActionID
d_GovActionID_78 :: ()
d_GovActionID_78 = erased
-- Ledger.Foreign.LedgerTypes.HashProtected
d_HashProtected_80 :: () -> ()
d_HashProtected_80 = erased
-- Ledger.Foreign.LedgerTypes.Tag
d_Tag_84 = ()
type T_Tag_84 = Tag
pattern C_Spend_86 = Spend
pattern C_Mint_88 = Mint
pattern C_Cert_90 = Cert
pattern C_Rewrd_92 = Rewrd
pattern C_VoteTag_94 = Vote
pattern C_Propose_96 = Propose
check_Spend_86 :: T_Tag_84
check_Spend_86 = Spend
check_Mint_88 :: T_Tag_84
check_Mint_88 = Mint
check_Cert_90 :: T_Tag_84
check_Cert_90 = Cert
check_Rewrd_92 :: T_Tag_84
check_Rewrd_92 = Rewrd
check_VoteTag_94 :: T_Tag_84
check_VoteTag_94 = Vote
check_Propose_96 :: T_Tag_84
check_Propose_96 = Propose
cover_Tag_84 :: Tag -> ()
cover_Tag_84 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Foreign.LedgerTypes.RdmrPtr
d_RdmrPtr_98 :: ()
d_RdmrPtr_98 = erased
-- Ledger.Foreign.LedgerTypes.ExUnits
d_ExUnits_100 :: ()
d_ExUnits_100 = erased
-- Ledger.Foreign.LedgerTypes.ProtVer
d_ProtVer_102 :: ()
d_ProtVer_102 = erased
-- Ledger.Foreign.LedgerTypes.Credential
d_Credential_104 = ()
type T_Credential_104 = Credential
pattern C_ScriptObj_106 a0 = ScriptObj a0
pattern C_KeyHashObj_108 a0 = KeyHashObj a0
check_ScriptObj_106 :: Integer -> T_Credential_104
check_ScriptObj_106 = ScriptObj
check_KeyHashObj_108 :: Integer -> T_Credential_104
check_KeyHashObj_108 = KeyHashObj
cover_Credential_104 :: Credential -> ()
cover_Credential_104 x
  = case x of
      ScriptObj _ -> ()
      KeyHashObj _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolParams
d_PoolParams_110 :: ()
d_PoolParams_110 = erased
-- Ledger.Foreign.LedgerTypes.RwdAddr
d_RwdAddr_112 :: ()
d_RwdAddr_112 = erased
-- Ledger.Foreign.LedgerTypes.GovRole
d_GovRole_114 = ()
type T_GovRole_114 = GovRole
pattern C_CC_116 = CC
pattern C_DRep_118 = DRep
pattern C_SPO_120 = SPO
check_CC_116 :: T_GovRole_114
check_CC_116 = CC
check_DRep_118 :: T_GovRole_114
check_DRep_118 = DRep
check_SPO_120 :: T_GovRole_114
check_SPO_120 = SPO
cover_GovRole_114 :: GovRole -> ()
cover_GovRole_114 x
  = case x of
      CC -> ()
      DRep -> ()
      SPO -> ()
-- Ledger.Foreign.LedgerTypes.VDeleg
d_VDeleg_122 = ()
type T_VDeleg_122 = VDeleg
pattern C_CredVoter_124 a0 a1 = CredVoter a0 a1
pattern C_AbstainRep_126 = AbstainRep
pattern C_NoConfidenceRep_128 = NoConfidenceRep
check_CredVoter_124 ::
  T_GovRole_114 -> T_Credential_104 -> T_VDeleg_122
check_CredVoter_124 = CredVoter
check_AbstainRep_126 :: T_VDeleg_122
check_AbstainRep_126 = AbstainRep
check_NoConfidenceRep_128 :: T_VDeleg_122
check_NoConfidenceRep_128 = NoConfidenceRep
cover_VDeleg_122 :: VDeleg -> ()
cover_VDeleg_122 x
  = case x of
      CredVoter _ _ -> ()
      AbstainRep -> ()
      NoConfidenceRep -> ()
-- Ledger.Foreign.LedgerTypes.TxCert
d_TxCert_130 = ()
type T_TxCert_130 = TxCert
pattern C_Delegate_132 a0 a1 a2 a3 = Delegate a0 a1 a2 a3
pattern C_Dereg_134 a0 = Dereg a0
pattern C_RegPool_136 a0 a1 = RegPool a0 a1
pattern C_RetirePool_138 a0 a1 = RetirePool a0 a1
pattern C_RegDRep_140 a0 a1 a2 = RegDRep a0 a1 a2
pattern C_DeRegDRep_142 a0 = DeRegDRep a0
pattern C_CCRegHot_144 a0 a1 = CCRegHot a0 a1
check_Delegate_132 ::
  T_Credential_104 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_VDeleg_122 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_104 ->
  Integer -> T_TxCert_130
check_Delegate_132 = Delegate
check_Dereg_134 :: T_Credential_104 -> T_TxCert_130
check_Dereg_134 = Dereg
check_RegPool_136 ::
  T_Credential_104 -> T_Credential_104 -> T_TxCert_130
check_RegPool_136 = RegPool
check_RetirePool_138 :: T_Credential_104 -> Integer -> T_TxCert_130
check_RetirePool_138 = RetirePool
check_RegDRep_140 ::
  T_Credential_104 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_TxCert_130
check_RegDRep_140 = RegDRep
check_DeRegDRep_142 :: T_Credential_104 -> T_TxCert_130
check_DeRegDRep_142 = DeRegDRep
check_CCRegHot_144 ::
  T_Credential_104 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_104 ->
  T_TxCert_130
check_CCRegHot_144 = CCRegHot
cover_TxCert_130 :: TxCert -> ()
cover_TxCert_130 x
  = case x of
      Delegate _ _ _ _ -> ()
      Dereg _ -> ()
      RegPool _ _ -> ()
      RetirePool _ _ -> ()
      RegDRep _ _ _ -> ()
      DeRegDRep _ -> ()
      CCRegHot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_146 = ()
type T_TxBody_146 = TxBody
pattern C_TxBody'46'constructor_1493 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
check_TxBody'46'constructor_1493 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_38 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_38 Integer) ->
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
  T_TxId_38 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_38 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_TxCert_130 ->
  T_TxBody_146
check_TxBody'46'constructor_1493 = MkTxBody
cover_TxBody_146 :: TxBody -> ()
cover_TxBody_146 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody.txins
d_txins_170 ::
  T_TxBody_146 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_38 Integer]
d_txins_170 v0
  = case coe v0 of
      C_TxBody'46'constructor_1493 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.refInputs
d_refInputs_172 ::
  T_TxBody_146 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_38 Integer]
d_refInputs_172 v0
  = case coe v0 of
      C_TxBody'46'constructor_1493 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txouts
d_txouts_174 ::
  T_TxBody_146 ->
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
d_txouts_174 v0
  = case coe v0 of
      C_TxBody'46'constructor_1493 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_176 :: T_TxBody_146 -> Integer
d_txfee_176 v0
  = case coe v0 of
      C_TxBody'46'constructor_1493 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_178 ::
  T_TxBody_146 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_178 v0
  = case coe v0 of
      C_TxBody'46'constructor_1493 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_180 :: T_TxBody_146 -> Integer
d_txsize_180 v0
  = case coe v0 of
      C_TxBody'46'constructor_1493 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_182 :: T_TxBody_146 -> T_TxId_38
d_txid_182 v0
  = case coe v0 of
      C_TxBody'46'constructor_1493 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_184 ::
  T_TxBody_146 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_38 Integer]
d_collateral_184 v0
  = case coe v0 of
      C_TxBody'46'constructor_1493 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_186 :: T_TxBody_146 -> [Integer]
d_reqSigHash_186 v0
  = case coe v0 of
      C_TxBody'46'constructor_1493 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_188 :: T_TxBody_146 -> Maybe Integer
d_scriptIntHash_188 v0
  = case coe v0 of
      C_TxBody'46'constructor_1493 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txcerts
d_txcerts_190 :: T_TxBody_146 -> [T_TxCert_130]
d_txcerts_190 v0
  = case coe v0 of
      C_TxBody'46'constructor_1493 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_192 = ()
type T_TxWitnesses_192 = TxWitnesses
pattern C_TxWitnesses'46'constructor_1859 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_1859 ::
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
       () () T_Tag_84 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer Integer)) ->
  T_TxWitnesses_192
check_TxWitnesses'46'constructor_1859 = MkTxWitnesses
cover_TxWitnesses_192 :: TxWitnesses -> ()
cover_TxWitnesses_192 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxWitnesses.vkSigs
d_vkSigs_202 ::
  T_TxWitnesses_192 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_vkSigs_202 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1859 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_204 :: T_TxWitnesses_192 -> [T_Empty_6]
d_scripts_204 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1859 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_206 ::
  T_TxWitnesses_192 ->
  T_HSMap_26
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txdats_206 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1859 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txrdmrs
d_txrdmrs_208 ::
  T_TxWitnesses_192 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_Tag_84 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer Integer))
d_txrdmrs_208 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1859 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_210 = ()
type T_Tx_210 = Tx
pattern C_Tx'46'constructor_1947 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_1947 ::
  T_TxBody_146 ->
  T_TxWitnesses_192 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_210
check_Tx'46'constructor_1947 = MkTx
cover_Tx_210 :: Tx -> ()
cover_Tx_210 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_218 :: T_Tx_210 -> T_TxBody_146
d_body_218 v0
  = case coe v0 of
      C_Tx'46'constructor_1947 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_220 :: T_Tx_210 -> T_TxWitnesses_192
d_wits_220 v0
  = case coe v0 of
      C_Tx'46'constructor_1947 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_222 ::
  T_Tx_210 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_222 v0
  = case coe v0 of
      C_Tx'46'constructor_1947 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_224 = ()
type T_PParams_224 = PParams
pattern C_PParams'46'constructor_2735 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24
check_PParams'46'constructor_2735 ::
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
  Integer -> Integer -> T_PParams_224
check_PParams'46'constructor_2735 = MkPParams
cover_PParams_224 :: PParams -> ()
cover_PParams_224 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_276 :: T_PParams_224 -> Integer
d_a_276 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_278 :: T_PParams_224 -> Integer
d_b_278 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_280 :: T_PParams_224 -> Integer
d_maxBlockSize_280 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_282 :: T_PParams_224 -> Integer
d_maxTxSize_282 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_284 :: T_PParams_224 -> Integer
d_maxHeaderSize_284 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_286 :: T_PParams_224 -> Integer
d_maxValSize_286 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_288 :: T_PParams_224 -> Integer
d_minUTxOValue_288 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_290 :: T_PParams_224 -> Integer
d_poolDeposit_290 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.keyDeposit
d_keyDeposit_292 :: T_PParams_224 -> Integer
d_keyDeposit_292 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_294 :: T_PParams_224 -> Integer
d_Emax_294 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.nopt
d_nopt_296 :: T_PParams_224 -> Integer
d_nopt_296 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_298 ::
  T_PParams_224 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_298 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.votingThresholds
d_votingThresholds_300 ::
  T_PParams_224 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_votingThresholds_300 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_302 :: T_PParams_224 -> Integer
d_govActionLifetime_302 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_304 :: T_PParams_224 -> Integer
d_govActionDeposit_304 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_306 :: T_PParams_224 -> Integer
d_drepDeposit_306 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_308 :: T_PParams_224 -> Integer
d_drepActivity_308 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_310 :: T_PParams_224 -> Integer
d_ccMinSize_310 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_312 :: T_PParams_224 -> Integer
d_ccMaxTermLength_312 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_314 ::
  T_PParams_224 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_314 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_316 ::
  T_PParams_224 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_316 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_318 ::
  T_PParams_224 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_318 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_320 ::
  T_PParams_224 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_320 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_322 :: T_PParams_224 -> Integer
d_coinsPerUTxOWord_322 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_324 :: T_PParams_224 -> Integer
d_maxCollateralInputs_324 v0
  = case coe v0 of
      C_PParams'46'constructor_2735 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_326 = ()
type T_UTxOEnv_326 = UTxOEnv
pattern C_UTxOEnv'46'constructor_4065 a0 a1 = MkUTxOEnv a0 a1
check_UTxOEnv'46'constructor_4065 ::
  Integer -> T_PParams_224 -> T_UTxOEnv_326
check_UTxOEnv'46'constructor_4065 = MkUTxOEnv
cover_UTxOEnv_326 :: UTxOEnv -> ()
cover_UTxOEnv_326 x
  = case x of
      MkUTxOEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_332 :: T_UTxOEnv_326 -> Integer
d_slot_332 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_4065 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_334 :: T_UTxOEnv_326 -> T_PParams_224
d_pparams_334 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_4065 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_336 = ()
type T_UTxOState_336 = UTxOState
pattern C_UTxOState'46'constructor_4107 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_4107 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_38 Integer)
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
  Integer -> T_UTxOState_336
check_UTxOState'46'constructor_4107 = MkUTxOState
cover_UTxOState_336 :: UTxOState -> ()
cover_UTxOState_336 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_342 ::
  T_UTxOState_336 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_38 Integer)
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
d_utxo_342 v0
  = case coe v0 of
      C_UTxOState'46'constructor_4107 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_344 :: T_UTxOState_336 -> Integer
d_fees_344 v0
  = case coe v0 of
      C_UTxOState'46'constructor_4107 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState
d_EnactState_346 = ()
type T_EnactState_346 = EnactState
pattern C_EnactState'46'constructor_4213 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_EnactState'46'constructor_4213 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () (T_HSMap_26 T_Credential_104 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_38 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_38 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_38 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_PParams_224
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_38 Integer) ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_104)
    Integer ->
  T_EnactState_346
check_EnactState'46'constructor_4213 = MkEnactState
cover_EnactState_346 :: EnactState -> ()
cover_EnactState_346 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactState.esCC
d_esCC_358 ::
  T_EnactState_346 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (Maybe
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny (T_HSMap_26 T_Credential_104 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_38 Integer)
d_esCC_358 v0
  = case coe v0 of
      C_EnactState'46'constructor_4213 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esConstitution
d_esConstitution_360 ::
  T_EnactState_346 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (Maybe Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_38 Integer)
d_esConstitution_360 v0
  = case coe v0 of
      C_EnactState'46'constructor_4213 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPV
d_esPV_362 ::
  T_EnactState_346 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_38 Integer)
d_esPV_362 v0
  = case coe v0 of
      C_EnactState'46'constructor_4213 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPParams
d_esPParams_364 ::
  T_EnactState_346 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_PParams_224
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_38 Integer)
d_esPParams_364 v0
  = case coe v0 of
      C_EnactState'46'constructor_4213 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esWithdrawals
d_esWithdrawals_366 ::
  T_EnactState_346 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_104)
    Integer
d_esWithdrawals_366 v0
  = case coe v0 of
      C_EnactState'46'constructor_4213 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv
d_GovEnv_368 = ()
type T_GovEnv_368 = GovEnv
pattern C_GovEnv'46'constructor_4341 a0 a1 a2 a3 a4 = MkGovEnv a0 a1 a2 a3 a4
check_GovEnv'46'constructor_4341 ::
  T_TxId_38 ->
  Integer ->
  T_PParams_224 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_EnactState_346 -> T_GovEnv_368
check_GovEnv'46'constructor_4341 = MkGovEnv
cover_GovEnv_368 :: GovEnv -> ()
cover_GovEnv_368 x
  = case x of
      MkGovEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovEnv.geTxId
d_geTxId_380 :: T_GovEnv_368 -> T_TxId_38
d_geTxId_380 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4341 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEpoch
d_geEpoch_382 :: T_GovEnv_368 -> Integer
d_geEpoch_382 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4341 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePParams
d_gePParams_384 :: T_GovEnv_368 -> T_PParams_224
d_gePParams_384 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4341 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePPolicy
d_gePPolicy_386 :: T_GovEnv_368 -> Maybe Integer
d_gePPolicy_386 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4341 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEnactState
d_geEnactState_388 :: T_GovEnv_368 -> T_EnactState_346
d_geEnactState_388 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4341 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Voter
d_Voter_390 :: ()
d_Voter_390 = erased
-- Ledger.Foreign.LedgerTypes.GovAction
d_GovAction_392 = ()
type T_GovAction_392 = GovAction
pattern C_NoConfidence_394 = NoConfidence
pattern C_NewCommittee_396 a0 a1 a2 = NewCommittee a0 a1 a2
pattern C_NewConstitution_398 a0 a1 = NewConstitution a0 a1
pattern C_TriggerHF_400 a0 = TriggerHF a0
pattern C_ChangePParams_402 a0 = ChangePParams a0
pattern C_TreasuryWdrl_404 a0 = TreasuryWdrl a0
pattern C_Info_406 = Info
check_NoConfidence_394 :: T_GovAction_392
check_NoConfidence_394 = NoConfidence
check_NewCommittee_396 ::
  T_HSMap_26 T_Credential_104 Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Credential_104 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_392
check_NewCommittee_396 = NewCommittee
check_NewConstitution_398 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_GovAction_392
check_NewConstitution_398 = NewConstitution
check_TriggerHF_400 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_392
check_TriggerHF_400 = TriggerHF
check_ChangePParams_402 :: Integer -> T_GovAction_392
check_ChangePParams_402 = ChangePParams
check_TreasuryWdrl_404 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_104)
    Integer ->
  T_GovAction_392
check_TreasuryWdrl_404 = TreasuryWdrl
check_Info_406 :: T_GovAction_392
check_Info_406 = Info
cover_GovAction_392 :: GovAction -> ()
cover_GovAction_392 x
  = case x of
      NoConfidence -> ()
      NewCommittee _ _ _ -> ()
      NewConstitution _ _ -> ()
      TriggerHF _ -> ()
      ChangePParams _ -> ()
      TreasuryWdrl _ -> ()
      Info -> ()
-- Ledger.Foreign.LedgerTypes.Vote
d_Vote_408 = ()
type T_Vote_408 = Vote
pattern C_VoteYes_410 = VoteYes
pattern C_VoteNo_412 = VoteNo
pattern C_VoteAbstain_414 = VoteAbstain
check_VoteYes_410 :: T_Vote_408
check_VoteYes_410 = VoteYes
check_VoteNo_412 :: T_Vote_408
check_VoteNo_412 = VoteNo
check_VoteAbstain_414 :: T_Vote_408
check_VoteAbstain_414 = VoteAbstain
cover_Vote_408 :: Vote -> ()
cover_Vote_408 x
  = case x of
      VoteYes -> ()
      VoteNo -> ()
      VoteAbstain -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState
d_GovActionState_416 = ()
type T_GovActionState_416 = GovActionState
pattern C_GovActionState'46'constructor_4753 a0 a1 a2 a3 a4 = MkGovActionState a0 a1 a2 a3 a4
check_GovActionState'46'constructor_4753 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_GovRole_114 T_Credential_104)
    T_Vote_408 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_104 ->
  Integer ->
  T_GovAction_392 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_38 Integer ->
  T_GovActionState_416
check_GovActionState'46'constructor_4753 = MkGovActionState
cover_GovActionState_416 :: GovActionState -> ()
cover_GovActionState_416 x
  = case x of
      MkGovActionState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState.gasVotes
d_gasVotes_428 ::
  T_GovActionState_416 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_GovRole_114 T_Credential_104)
    T_Vote_408
d_gasVotes_428 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4753 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasReturnAddr
d_gasReturnAddr_430 ::
  T_GovActionState_416 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_104
d_gasReturnAddr_430 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4753 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasExpiresIn
d_gasExpiresIn_432 :: T_GovActionState_416 -> Integer
d_gasExpiresIn_432 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4753 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasAction
d_gasAction_434 :: T_GovActionState_416 -> T_GovAction_392
d_gasAction_434 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4753 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasPrevAction
d_gasPrevAction_436 ::
  T_GovActionState_416 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_38 Integer
d_gasPrevAction_436 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4753 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote
d_GovVote_438 = ()
type T_GovVote_438 = GovVote
pattern C_GovVote'46'constructor_4873 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_GovVote'46'constructor_4873 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_38 Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_114 T_Credential_104 ->
  T_Vote_408 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_GovVote_438
check_GovVote'46'constructor_4873 = MkGovVote
cover_GovVote_438 :: GovVote -> ()
cover_GovVote_438 x
  = case x of
      MkGovVote _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovVote.gvGid
d_gvGid_448 ::
  T_GovVote_438 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_38 Integer
d_gvGid_448 v0
  = case coe v0 of
      C_GovVote'46'constructor_4873 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVoter
d_gvVoter_450 ::
  T_GovVote_438 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_GovRole_114 T_Credential_104
d_gvVoter_450 v0
  = case coe v0 of
      C_GovVote'46'constructor_4873 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVote
d_gvVote_452 :: T_GovVote_438 -> T_Vote_408
d_gvVote_452 v0
  = case coe v0 of
      C_GovVote'46'constructor_4873 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvAnchor
d_gvAnchor_454 ::
  T_GovVote_438 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gvAnchor_454 v0
  = case coe v0 of
      C_GovVote'46'constructor_4873 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal
d_GovProposal_456 = ()
type T_GovProposal_456 = GovProposal
pattern C_GovProposal'46'constructor_4985 a0 a1 a2 a3 a4 a5 = MkGovProposal a0 a1 a2 a3 a4 a5
check_GovProposal'46'constructor_4985 ::
  T_GovAction_392 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_38 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_104 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_GovProposal_456
check_GovProposal'46'constructor_4985 = MkGovProposal
cover_GovProposal_456 :: GovProposal -> ()
cover_GovProposal_456 x
  = case x of
      MkGovProposal _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAction
d_gpAction_470 :: T_GovProposal_456 -> T_GovAction_392
d_gpAction_470 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4985 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPrevAction
d_gpPrevAction_472 ::
  T_GovProposal_456 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_38 Integer
d_gpPrevAction_472 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4985 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPolicy
d_gpPolicy_474 :: T_GovProposal_456 -> Maybe Integer
d_gpPolicy_474 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4985 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpDeposit
d_gpDeposit_476 :: T_GovProposal_456 -> Integer
d_gpDeposit_476 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4985 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpReturnAddr
d_gpReturnAddr_478 ::
  T_GovProposal_456 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_104
d_gpReturnAddr_478 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4985 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAnchor
d_gpAnchor_480 ::
  T_GovProposal_456 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gpAnchor_480 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4985 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovSignal
d_GovSignal_482 = ()
type T_GovSignal_482 = GovSignal
pattern C_GovSignalVote_484 a0 = GovSignalVote a0
pattern C_GovSignalProposal_486 a0 = GovSignalProposal a0
check_GovSignalVote_484 :: T_GovVote_438 -> T_GovSignal_482
check_GovSignalVote_484 = GovSignalVote
check_GovSignalProposal_486 :: T_GovProposal_456 -> T_GovSignal_482
check_GovSignalProposal_486 = GovSignalProposal
cover_GovSignal_482 :: GovSignal -> ()
cover_GovSignal_482 x
  = case x of
      GovSignalVote _ -> ()
      GovSignalProposal _ -> ()
-- Ledger.Foreign.LedgerTypes.GovState
d_GovState_488 :: ()
d_GovState_488 = erased
-- Ledger.Foreign.LedgerTypes.CertEnv
d_CertEnv_490 = ()
type T_CertEnv_490 = CertEnv
pattern C_CertEnv'46'constructor_5193 a0 a1 a2 a3 = MkCertEnv a0 a1 a2 a3
check_CertEnv'46'constructor_5193 ::
  Integer ->
  T_PParams_224 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_438 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_104)
    Integer ->
  T_CertEnv_490
check_CertEnv'46'constructor_5193 = MkCertEnv
cover_CertEnv_490 :: CertEnv -> ()
cover_CertEnv_490 x
  = case x of
      MkCertEnv _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv.epoch
d_epoch_500 :: T_CertEnv_490 -> Integer
d_epoch_500 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5193 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.pp
d_pp_502 :: T_CertEnv_490 -> T_PParams_224
d_pp_502 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5193 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.votes
d_votes_504 :: T_CertEnv_490 -> [T_GovVote_438]
d_votes_504 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5193 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.wdrls
d_wdrls_506 ::
  T_CertEnv_490 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_104)
    Integer
d_wdrls_506 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5193 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState
d_DState_508 = ()
type T_DState_508 = DState
pattern C_DState'46'constructor_5279 a0 a1 a2 = MkDState a0 a1 a2
check_DState'46'constructor_5279 ::
  T_HSMap_26 T_Credential_104 T_VDeleg_122 ->
  T_HSMap_26 T_Credential_104 T_Credential_104 ->
  T_HSMap_26 T_Credential_104 Integer -> T_DState_508
check_DState'46'constructor_5279 = MkDState
cover_DState_508 :: DState -> ()
cover_DState_508 x
  = case x of
      MkDState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState.voteDelegs
d_voteDelegs_516 ::
  T_DState_508 -> T_HSMap_26 T_Credential_104 T_VDeleg_122
d_voteDelegs_516 v0
  = case coe v0 of
      C_DState'46'constructor_5279 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.stakeDelegs
d_stakeDelegs_518 ::
  T_DState_508 -> T_HSMap_26 T_Credential_104 T_Credential_104
d_stakeDelegs_518 v0
  = case coe v0 of
      C_DState'46'constructor_5279 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.rewards
d_rewards_520 ::
  T_DState_508 -> T_HSMap_26 T_Credential_104 Integer
d_rewards_520 v0
  = case coe v0 of
      C_DState'46'constructor_5279 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState
d_PState_522 = ()
type T_PState_522 = PState
pattern C_PState'46'constructor_5341 a0 a1 = MkPState a0 a1
check_PState'46'constructor_5341 ::
  T_HSMap_26 T_Credential_104 T_Credential_104 ->
  T_HSMap_26 T_Credential_104 Integer -> T_PState_522
check_PState'46'constructor_5341 = MkPState
cover_PState_522 :: PState -> ()
cover_PState_522 x
  = case x of
      MkPState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PState.pools
d_pools_528 ::
  T_PState_522 -> T_HSMap_26 T_Credential_104 T_Credential_104
d_pools_528 v0
  = case coe v0 of
      C_PState'46'constructor_5341 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState.retiring
d_retiring_530 ::
  T_PState_522 -> T_HSMap_26 T_Credential_104 Integer
d_retiring_530 v0
  = case coe v0 of
      C_PState'46'constructor_5341 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState
d_GState_532 = ()
type T_GState_532 = GState
pattern C_GState'46'constructor_5399 a0 a1 = MkGState a0 a1
check_GState'46'constructor_5399 ::
  T_HSMap_26 T_Credential_104 Integer ->
  T_HSMap_26
    T_Credential_104
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_104) ->
  T_GState_532
check_GState'46'constructor_5399 = MkGState
cover_GState_532 :: GState -> ()
cover_GState_532 x
  = case x of
      MkGState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState.dreps
d_dreps_538 :: T_GState_532 -> T_HSMap_26 T_Credential_104 Integer
d_dreps_538 v0
  = case coe v0 of
      C_GState'46'constructor_5399 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState.ccHotKeys
d_ccHotKeys_540 ::
  T_GState_532 ->
  T_HSMap_26 T_Credential_104 (Maybe T_Credential_104)
d_ccHotKeys_540 v0
  = case coe v0 of
      C_GState'46'constructor_5399 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState
d_CertState_542 = ()
type T_CertState_542 = CertState
pattern C_CertState'46'constructor_5445 a0 a1 a2 = MkCertState a0 a1 a2
check_CertState'46'constructor_5445 ::
  T_DState_508 -> T_PState_522 -> T_GState_532 -> T_CertState_542
check_CertState'46'constructor_5445 = MkCertState
cover_CertState_542 :: CertState -> ()
cover_CertState_542 x
  = case x of
      MkCertState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState.dState
d_dState_550 :: T_CertState_542 -> T_DState_508
d_dState_550 v0
  = case coe v0 of
      C_CertState'46'constructor_5445 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.pState
d_pState_552 :: T_CertState_542 -> T_PState_522
d_pState_552 v0
  = case coe v0 of
      C_CertState'46'constructor_5445 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.gState
d_gState_554 :: T_CertState_542 -> T_GState_532
d_gState_554 v0
  = case coe v0 of
      C_CertState'46'constructor_5445 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
