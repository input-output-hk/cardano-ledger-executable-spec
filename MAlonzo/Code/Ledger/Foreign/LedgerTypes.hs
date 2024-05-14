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
newtype HSSet a = MkHSSet [a]

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
newtype StakeDistrs = MkStakeDistrs (HSMap VDeleg Coin)
data RatifyEnv = MkRatifyEnv
  { reStakeDistrs   :: StakeDistrs
  , reCurrentEpoch  :: Epoch
  , reDReps         :: HSMap Credential Epoch
  , reCCHotKeys     :: HSMap Credential (Maybe Credential)
  , reTreasury      :: Coin
  }
data RatifyState = MkRatifyState
 { es      :: EnactState
 , removed :: HSSet (GovActionID, GovActionState)
 , delay   :: Bool
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
-- Ledger.Foreign.LedgerTypes.HSSet
d_HSSet_40 a0 = ()
type T_HSSet_40 a0 = HSSet a0
pattern C_MkHSSet_48 a0 = MkHSSet a0
check_MkHSSet_48 ::
  forall xA.
    MAlonzo.Code.Agda.Builtin.List.T_List_10 () xA -> T_HSSet_40 xA
check_MkHSSet_48 = MkHSSet
cover_HSSet_40 :: HSSet a1 -> ()
cover_HSSet_40 x
  = case x of
      MkHSSet _ -> ()
-- Ledger.Foreign.LedgerTypes.HSSet.elems
d_elems_46 :: T_HSSet_40 AgdaAny -> [AgdaAny]
d_elems_46 v0
  = case coe v0 of
      C_MkHSSet_48 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Rational
d_Rational_50 :: ()
d_Rational_50 = erased
-- Ledger.Foreign.LedgerTypes.TxId
d_TxId_52 = ()
type T_TxId_52 = TxId
pattern C_TxId'46'constructor_339 a0 = MkTxId a0
check_TxId'46'constructor_339 :: Integer -> T_TxId_52
check_TxId'46'constructor_339 = MkTxId
cover_TxId_52 :: TxId -> ()
cover_TxId_52 x
  = case x of
      MkTxId _ -> ()
-- Ledger.Foreign.LedgerTypes.TxId.txid
d_txid_56 :: T_TxId_52 -> Integer
d_txid_56 v0
  = case coe v0 of
      C_TxId'46'constructor_339 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Coin
d_Coin_58 :: ()
d_Coin_58 = erased
-- Ledger.Foreign.LedgerTypes.Addr
d_Addr_60 :: ()
d_Addr_60 = erased
-- Ledger.Foreign.LedgerTypes.Ix
d_Ix_62 :: ()
d_Ix_62 = erased
-- Ledger.Foreign.LedgerTypes.Epoch
d_Epoch_64 :: ()
d_Epoch_64 = erased
-- Ledger.Foreign.LedgerTypes.ScriptHash
d_ScriptHash_66 :: ()
d_ScriptHash_66 = erased
-- Ledger.Foreign.LedgerTypes.AuxiliaryData
d_AuxiliaryData_68 :: ()
d_AuxiliaryData_68 = erased
-- Ledger.Foreign.LedgerTypes.DataHash
d_DataHash_70 :: ()
d_DataHash_70 = erased
-- Ledger.Foreign.LedgerTypes.Datum
d_Datum_72 :: ()
d_Datum_72 = erased
-- Ledger.Foreign.LedgerTypes.Redeemer
d_Redeemer_74 :: ()
d_Redeemer_74 = erased
-- Ledger.Foreign.LedgerTypes.Anchor
d_Anchor_76 :: ()
d_Anchor_76 = erased
-- Ledger.Foreign.LedgerTypes.Network
d_Network_78 :: ()
d_Network_78 = erased
-- Ledger.Foreign.LedgerTypes.PParamsUpdate
d_PParamsUpdate_80 :: ()
d_PParamsUpdate_80 = erased
-- Ledger.Foreign.LedgerTypes.Script
d_Script_82 :: ()
d_Script_82 = erased
-- Ledger.Foreign.LedgerTypes.TxIn
d_TxIn_84 :: ()
d_TxIn_84 = erased
-- Ledger.Foreign.LedgerTypes.TxOut
d_TxOut_86 :: ()
d_TxOut_86 = erased
-- Ledger.Foreign.LedgerTypes.UTxO
d_UTxO_88 :: ()
d_UTxO_88 = erased
-- Ledger.Foreign.LedgerTypes.Hash
d_Hash_90 :: ()
d_Hash_90 = erased
-- Ledger.Foreign.LedgerTypes.GovActionID
d_GovActionID_92 :: ()
d_GovActionID_92 = erased
-- Ledger.Foreign.LedgerTypes.HashProtected
d_HashProtected_94 :: () -> ()
d_HashProtected_94 = erased
-- Ledger.Foreign.LedgerTypes.Tag
d_Tag_98 = ()
type T_Tag_98 = Tag
pattern C_Spend_100 = Spend
pattern C_Mint_102 = Mint
pattern C_Cert_104 = Cert
pattern C_Rewrd_106 = Rewrd
pattern C_VoteTag_108 = Vote
pattern C_Propose_110 = Propose
check_Spend_100 :: T_Tag_98
check_Spend_100 = Spend
check_Mint_102 :: T_Tag_98
check_Mint_102 = Mint
check_Cert_104 :: T_Tag_98
check_Cert_104 = Cert
check_Rewrd_106 :: T_Tag_98
check_Rewrd_106 = Rewrd
check_VoteTag_108 :: T_Tag_98
check_VoteTag_108 = Vote
check_Propose_110 :: T_Tag_98
check_Propose_110 = Propose
cover_Tag_98 :: Tag -> ()
cover_Tag_98 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Foreign.LedgerTypes.RdmrPtr
d_RdmrPtr_112 :: ()
d_RdmrPtr_112 = erased
-- Ledger.Foreign.LedgerTypes.ExUnits
d_ExUnits_114 :: ()
d_ExUnits_114 = erased
-- Ledger.Foreign.LedgerTypes.ProtVer
d_ProtVer_116 :: ()
d_ProtVer_116 = erased
-- Ledger.Foreign.LedgerTypes.Credential
d_Credential_118 = ()
type T_Credential_118 = Credential
pattern C_ScriptObj_120 a0 = ScriptObj a0
pattern C_KeyHashObj_122 a0 = KeyHashObj a0
check_ScriptObj_120 :: Integer -> T_Credential_118
check_ScriptObj_120 = ScriptObj
check_KeyHashObj_122 :: Integer -> T_Credential_118
check_KeyHashObj_122 = KeyHashObj
cover_Credential_118 :: Credential -> ()
cover_Credential_118 x
  = case x of
      ScriptObj _ -> ()
      KeyHashObj _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolParams
d_PoolParams_124 :: ()
d_PoolParams_124 = erased
-- Ledger.Foreign.LedgerTypes.RwdAddr
d_RwdAddr_126 :: ()
d_RwdAddr_126 = erased
-- Ledger.Foreign.LedgerTypes.GovRole
d_GovRole_128 = ()
type T_GovRole_128 = GovRole
pattern C_CC_130 = CC
pattern C_DRep_132 = DRep
pattern C_SPO_134 = SPO
check_CC_130 :: T_GovRole_128
check_CC_130 = CC
check_DRep_132 :: T_GovRole_128
check_DRep_132 = DRep
check_SPO_134 :: T_GovRole_128
check_SPO_134 = SPO
cover_GovRole_128 :: GovRole -> ()
cover_GovRole_128 x
  = case x of
      CC -> ()
      DRep -> ()
      SPO -> ()
-- Ledger.Foreign.LedgerTypes.VDeleg
d_VDeleg_136 = ()
type T_VDeleg_136 = VDeleg
pattern C_CredVoter_138 a0 a1 = CredVoter a0 a1
pattern C_AbstainRep_140 = AbstainRep
pattern C_NoConfidenceRep_142 = NoConfidenceRep
check_CredVoter_138 ::
  T_GovRole_128 -> T_Credential_118 -> T_VDeleg_136
check_CredVoter_138 = CredVoter
check_AbstainRep_140 :: T_VDeleg_136
check_AbstainRep_140 = AbstainRep
check_NoConfidenceRep_142 :: T_VDeleg_136
check_NoConfidenceRep_142 = NoConfidenceRep
cover_VDeleg_136 :: VDeleg -> ()
cover_VDeleg_136 x
  = case x of
      CredVoter _ _ -> ()
      AbstainRep -> ()
      NoConfidenceRep -> ()
-- Ledger.Foreign.LedgerTypes.TxCert
d_TxCert_144 = ()
type T_TxCert_144 = TxCert
pattern C_Delegate_146 a0 a1 a2 a3 = Delegate a0 a1 a2 a3
pattern C_Dereg_148 a0 = Dereg a0
pattern C_RegPool_150 a0 a1 = RegPool a0 a1
pattern C_RetirePool_152 a0 a1 = RetirePool a0 a1
pattern C_RegDRep_154 a0 a1 a2 = RegDRep a0 a1 a2
pattern C_DeRegDRep_156 a0 = DeRegDRep a0
pattern C_CCRegHot_158 a0 a1 = CCRegHot a0 a1
check_Delegate_146 ::
  T_Credential_118 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_VDeleg_136 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118 ->
  Integer -> T_TxCert_144
check_Delegate_146 = Delegate
check_Dereg_148 :: T_Credential_118 -> T_TxCert_144
check_Dereg_148 = Dereg
check_RegPool_150 ::
  T_Credential_118 -> T_Credential_118 -> T_TxCert_144
check_RegPool_150 = RegPool
check_RetirePool_152 :: T_Credential_118 -> Integer -> T_TxCert_144
check_RetirePool_152 = RetirePool
check_RegDRep_154 ::
  T_Credential_118 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_TxCert_144
check_RegDRep_154 = RegDRep
check_DeRegDRep_156 :: T_Credential_118 -> T_TxCert_144
check_DeRegDRep_156 = DeRegDRep
check_CCRegHot_158 ::
  T_Credential_118 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118 ->
  T_TxCert_144
check_CCRegHot_158 = CCRegHot
cover_TxCert_144 :: TxCert -> ()
cover_TxCert_144 x
  = case x of
      Delegate _ _ _ _ -> ()
      Dereg _ -> ()
      RegPool _ _ -> ()
      RetirePool _ _ -> ()
      RegDRep _ _ _ -> ()
      DeRegDRep _ -> ()
      CCRegHot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_160 = ()
type T_TxBody_160 = TxBody
pattern C_TxBody'46'constructor_1547 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
check_TxBody'46'constructor_1547 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
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
  T_TxId_52 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_TxCert_144 ->
  T_TxBody_160
check_TxBody'46'constructor_1547 = MkTxBody
cover_TxBody_160 :: TxBody -> ()
cover_TxBody_160 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody.txins
d_txins_184 ::
  T_TxBody_160 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_txins_184 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.refInputs
d_refInputs_186 ::
  T_TxBody_160 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_refInputs_186 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txouts
d_txouts_188 ::
  T_TxBody_160 ->
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
d_txouts_188 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_190 :: T_TxBody_160 -> Integer
d_txfee_190 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_192 ::
  T_TxBody_160 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_192 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_194 :: T_TxBody_160 -> Integer
d_txsize_194 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_196 :: T_TxBody_160 -> T_TxId_52
d_txid_196 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_198 ::
  T_TxBody_160 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_collateral_198 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_200 :: T_TxBody_160 -> [Integer]
d_reqSigHash_200 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_202 :: T_TxBody_160 -> Maybe Integer
d_scriptIntHash_202 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txcerts
d_txcerts_204 :: T_TxBody_160 -> [T_TxCert_144]
d_txcerts_204 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_206 = ()
type T_TxWitnesses_206 = TxWitnesses
pattern C_TxWitnesses'46'constructor_1913 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_1913 ::
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
       () () T_Tag_98 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer Integer)) ->
  T_TxWitnesses_206
check_TxWitnesses'46'constructor_1913 = MkTxWitnesses
cover_TxWitnesses_206 :: TxWitnesses -> ()
cover_TxWitnesses_206 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxWitnesses.vkSigs
d_vkSigs_216 ::
  T_TxWitnesses_206 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_vkSigs_216 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1913 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_218 :: T_TxWitnesses_206 -> [T_Empty_6]
d_scripts_218 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1913 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_220 ::
  T_TxWitnesses_206 ->
  T_HSMap_26
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txdats_220 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1913 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txrdmrs
d_txrdmrs_222 ::
  T_TxWitnesses_206 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_Tag_98 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer Integer))
d_txrdmrs_222 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1913 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_224 = ()
type T_Tx_224 = Tx
pattern C_Tx'46'constructor_2001 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_2001 ::
  T_TxBody_160 ->
  T_TxWitnesses_206 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_224
check_Tx'46'constructor_2001 = MkTx
cover_Tx_224 :: Tx -> ()
cover_Tx_224 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_232 :: T_Tx_224 -> T_TxBody_160
d_body_232 v0
  = case coe v0 of
      C_Tx'46'constructor_2001 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_234 :: T_Tx_224 -> T_TxWitnesses_206
d_wits_234 v0
  = case coe v0 of
      C_Tx'46'constructor_2001 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_236 ::
  T_Tx_224 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_236 v0
  = case coe v0 of
      C_Tx'46'constructor_2001 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_238 = ()
type T_PParams_238 = PParams
pattern C_PParams'46'constructor_2789 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24
check_PParams'46'constructor_2789 ::
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
  Integer -> Integer -> T_PParams_238
check_PParams'46'constructor_2789 = MkPParams
cover_PParams_238 :: PParams -> ()
cover_PParams_238 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_290 :: T_PParams_238 -> Integer
d_a_290 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_292 :: T_PParams_238 -> Integer
d_b_292 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_294 :: T_PParams_238 -> Integer
d_maxBlockSize_294 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_296 :: T_PParams_238 -> Integer
d_maxTxSize_296 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_298 :: T_PParams_238 -> Integer
d_maxHeaderSize_298 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_300 :: T_PParams_238 -> Integer
d_maxValSize_300 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_302 :: T_PParams_238 -> Integer
d_minUTxOValue_302 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_304 :: T_PParams_238 -> Integer
d_poolDeposit_304 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.keyDeposit
d_keyDeposit_306 :: T_PParams_238 -> Integer
d_keyDeposit_306 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_308 :: T_PParams_238 -> Integer
d_Emax_308 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.nopt
d_nopt_310 :: T_PParams_238 -> Integer
d_nopt_310 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_312 ::
  T_PParams_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_312 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.votingThresholds
d_votingThresholds_314 ::
  T_PParams_238 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_votingThresholds_314 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_316 :: T_PParams_238 -> Integer
d_govActionLifetime_316 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_318 :: T_PParams_238 -> Integer
d_govActionDeposit_318 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_320 :: T_PParams_238 -> Integer
d_drepDeposit_320 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_322 :: T_PParams_238 -> Integer
d_drepActivity_322 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_324 :: T_PParams_238 -> Integer
d_ccMinSize_324 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_326 :: T_PParams_238 -> Integer
d_ccMaxTermLength_326 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_328 ::
  T_PParams_238 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_328 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_330 ::
  T_PParams_238 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_330 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_332 ::
  T_PParams_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_332 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_334 ::
  T_PParams_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_334 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_336 :: T_PParams_238 -> Integer
d_coinsPerUTxOWord_336 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_338 :: T_PParams_238 -> Integer
d_maxCollateralInputs_338 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_340 = ()
type T_UTxOEnv_340 = UTxOEnv
pattern C_UTxOEnv'46'constructor_4119 a0 a1 = MkUTxOEnv a0 a1
check_UTxOEnv'46'constructor_4119 ::
  Integer -> T_PParams_238 -> T_UTxOEnv_340
check_UTxOEnv'46'constructor_4119 = MkUTxOEnv
cover_UTxOEnv_340 :: UTxOEnv -> ()
cover_UTxOEnv_340 x
  = case x of
      MkUTxOEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_346 :: T_UTxOEnv_340 -> Integer
d_slot_346 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_4119 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_348 :: T_UTxOEnv_340 -> T_PParams_238
d_pparams_348 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_4119 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_350 = ()
type T_UTxOState_350 = UTxOState
pattern C_UTxOState'46'constructor_4161 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_4161 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer)
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
  Integer -> T_UTxOState_350
check_UTxOState'46'constructor_4161 = MkUTxOState
cover_UTxOState_350 :: UTxOState -> ()
cover_UTxOState_350 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_356 ::
  T_UTxOState_350 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
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
d_utxo_356 v0
  = case coe v0 of
      C_UTxOState'46'constructor_4161 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_358 :: T_UTxOState_350 -> Integer
d_fees_358 v0
  = case coe v0 of
      C_UTxOState'46'constructor_4161 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState
d_EnactState_360 = ()
type T_EnactState_360 = EnactState
pattern C_EnactState'46'constructor_4267 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_EnactState'46'constructor_4267 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () (T_HSMap_26 T_Credential_118 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_PParams_238
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_EnactState_360
check_EnactState'46'constructor_4267 = MkEnactState
cover_EnactState_360 :: EnactState -> ()
cover_EnactState_360 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactState.esCC
d_esCC_372 ::
  T_EnactState_360 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (Maybe
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny (T_HSMap_26 T_Credential_118 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esCC_372 v0
  = case coe v0 of
      C_EnactState'46'constructor_4267 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esConstitution
d_esConstitution_374 ::
  T_EnactState_360 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (Maybe Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esConstitution_374 v0
  = case coe v0 of
      C_EnactState'46'constructor_4267 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPV
d_esPV_376 ::
  T_EnactState_360 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPV_376 v0
  = case coe v0 of
      C_EnactState'46'constructor_4267 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPParams
d_esPParams_378 ::
  T_EnactState_360 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_PParams_238
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPParams_378 v0
  = case coe v0 of
      C_EnactState'46'constructor_4267 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esWithdrawals
d_esWithdrawals_380 ::
  T_EnactState_360 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_esWithdrawals_380 v0
  = case coe v0 of
      C_EnactState'46'constructor_4267 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv
d_GovEnv_382 = ()
type T_GovEnv_382 = GovEnv
pattern C_GovEnv'46'constructor_4395 a0 a1 a2 a3 a4 = MkGovEnv a0 a1 a2 a3 a4
check_GovEnv'46'constructor_4395 ::
  T_TxId_52 ->
  Integer ->
  T_PParams_238 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_EnactState_360 -> T_GovEnv_382
check_GovEnv'46'constructor_4395 = MkGovEnv
cover_GovEnv_382 :: GovEnv -> ()
cover_GovEnv_382 x
  = case x of
      MkGovEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovEnv.geTxId
d_geTxId_394 :: T_GovEnv_382 -> T_TxId_52
d_geTxId_394 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4395 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEpoch
d_geEpoch_396 :: T_GovEnv_382 -> Integer
d_geEpoch_396 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4395 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePParams
d_gePParams_398 :: T_GovEnv_382 -> T_PParams_238
d_gePParams_398 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4395 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePPolicy
d_gePPolicy_400 :: T_GovEnv_382 -> Maybe Integer
d_gePPolicy_400 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4395 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEnactState
d_geEnactState_402 :: T_GovEnv_382 -> T_EnactState_360
d_geEnactState_402 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4395 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Voter
d_Voter_404 :: ()
d_Voter_404 = erased
-- Ledger.Foreign.LedgerTypes.GovAction
d_GovAction_406 = ()
type T_GovAction_406 = GovAction
pattern C_NoConfidence_408 = NoConfidence
pattern C_NewCommittee_410 a0 a1 a2 = NewCommittee a0 a1 a2
pattern C_NewConstitution_412 a0 a1 = NewConstitution a0 a1
pattern C_TriggerHF_414 a0 = TriggerHF a0
pattern C_ChangePParams_416 a0 = ChangePParams a0
pattern C_TreasuryWdrl_418 a0 = TreasuryWdrl a0
pattern C_Info_420 = Info
check_NoConfidence_408 :: T_GovAction_406
check_NoConfidence_408 = NoConfidence
check_NewCommittee_410 ::
  T_HSMap_26 T_Credential_118 Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Credential_118 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_406
check_NewCommittee_410 = NewCommittee
check_NewConstitution_412 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_GovAction_406
check_NewConstitution_412 = NewConstitution
check_TriggerHF_414 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_406
check_TriggerHF_414 = TriggerHF
check_ChangePParams_416 :: Integer -> T_GovAction_406
check_ChangePParams_416 = ChangePParams
check_TreasuryWdrl_418 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_GovAction_406
check_TreasuryWdrl_418 = TreasuryWdrl
check_Info_420 :: T_GovAction_406
check_Info_420 = Info
cover_GovAction_406 :: GovAction -> ()
cover_GovAction_406 x
  = case x of
      NoConfidence -> ()
      NewCommittee _ _ _ -> ()
      NewConstitution _ _ -> ()
      TriggerHF _ -> ()
      ChangePParams _ -> ()
      TreasuryWdrl _ -> ()
      Info -> ()
-- Ledger.Foreign.LedgerTypes.Vote
d_Vote_422 = ()
type T_Vote_422 = Vote
pattern C_VoteYes_424 = VoteYes
pattern C_VoteNo_426 = VoteNo
pattern C_VoteAbstain_428 = VoteAbstain
check_VoteYes_424 :: T_Vote_422
check_VoteYes_424 = VoteYes
check_VoteNo_426 :: T_Vote_422
check_VoteNo_426 = VoteNo
check_VoteAbstain_428 :: T_Vote_422
check_VoteAbstain_428 = VoteAbstain
cover_Vote_422 :: Vote -> ()
cover_Vote_422 x
  = case x of
      VoteYes -> ()
      VoteNo -> ()
      VoteAbstain -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState
d_GovActionState_430 = ()
type T_GovActionState_430 = GovActionState
pattern C_GovActionState'46'constructor_4807 a0 a1 a2 a3 a4 = MkGovActionState a0 a1 a2 a3 a4
check_GovActionState'46'constructor_4807 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_GovRole_128 T_Credential_118)
    T_Vote_422 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118 ->
  Integer ->
  T_GovAction_406 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  T_GovActionState_430
check_GovActionState'46'constructor_4807 = MkGovActionState
cover_GovActionState_430 :: GovActionState -> ()
cover_GovActionState_430 x
  = case x of
      MkGovActionState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState.gasVotes
d_gasVotes_442 ::
  T_GovActionState_430 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_GovRole_128 T_Credential_118)
    T_Vote_422
d_gasVotes_442 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4807 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasReturnAddr
d_gasReturnAddr_444 ::
  T_GovActionState_430 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_118
d_gasReturnAddr_444 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4807 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasExpiresIn
d_gasExpiresIn_446 :: T_GovActionState_430 -> Integer
d_gasExpiresIn_446 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4807 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasAction
d_gasAction_448 :: T_GovActionState_430 -> T_GovAction_406
d_gasAction_448 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4807 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasPrevAction
d_gasPrevAction_450 ::
  T_GovActionState_430 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gasPrevAction_450 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4807 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote
d_GovVote_452 = ()
type T_GovVote_452 = GovVote
pattern C_GovVote'46'constructor_4927 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_GovVote'46'constructor_4927 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_128 T_Credential_118 ->
  T_Vote_422 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_GovVote_452
check_GovVote'46'constructor_4927 = MkGovVote
cover_GovVote_452 :: GovVote -> ()
cover_GovVote_452 x
  = case x of
      MkGovVote _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovVote.gvGid
d_gvGid_462 ::
  T_GovVote_452 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gvGid_462 v0
  = case coe v0 of
      C_GovVote'46'constructor_4927 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVoter
d_gvVoter_464 ::
  T_GovVote_452 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_GovRole_128 T_Credential_118
d_gvVoter_464 v0
  = case coe v0 of
      C_GovVote'46'constructor_4927 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVote
d_gvVote_466 :: T_GovVote_452 -> T_Vote_422
d_gvVote_466 v0
  = case coe v0 of
      C_GovVote'46'constructor_4927 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvAnchor
d_gvAnchor_468 ::
  T_GovVote_452 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gvAnchor_468 v0
  = case coe v0 of
      C_GovVote'46'constructor_4927 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal
d_GovProposal_470 = ()
type T_GovProposal_470 = GovProposal
pattern C_GovProposal'46'constructor_5039 a0 a1 a2 a3 a4 a5 = MkGovProposal a0 a1 a2 a3 a4 a5
check_GovProposal'46'constructor_5039 ::
  T_GovAction_406 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_GovProposal_470
check_GovProposal'46'constructor_5039 = MkGovProposal
cover_GovProposal_470 :: GovProposal -> ()
cover_GovProposal_470 x
  = case x of
      MkGovProposal _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAction
d_gpAction_484 :: T_GovProposal_470 -> T_GovAction_406
d_gpAction_484 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5039 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPrevAction
d_gpPrevAction_486 ::
  T_GovProposal_470 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gpPrevAction_486 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5039 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPolicy
d_gpPolicy_488 :: T_GovProposal_470 -> Maybe Integer
d_gpPolicy_488 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5039 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpDeposit
d_gpDeposit_490 :: T_GovProposal_470 -> Integer
d_gpDeposit_490 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5039 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpReturnAddr
d_gpReturnAddr_492 ::
  T_GovProposal_470 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_118
d_gpReturnAddr_492 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5039 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAnchor
d_gpAnchor_494 ::
  T_GovProposal_470 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gpAnchor_494 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5039 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovSignal
d_GovSignal_496 = ()
type T_GovSignal_496 = GovSignal
pattern C_GovSignalVote_498 a0 = GovSignalVote a0
pattern C_GovSignalProposal_500 a0 = GovSignalProposal a0
check_GovSignalVote_498 :: T_GovVote_452 -> T_GovSignal_496
check_GovSignalVote_498 = GovSignalVote
check_GovSignalProposal_500 :: T_GovProposal_470 -> T_GovSignal_496
check_GovSignalProposal_500 = GovSignalProposal
cover_GovSignal_496 :: GovSignal -> ()
cover_GovSignal_496 x
  = case x of
      GovSignalVote _ -> ()
      GovSignalProposal _ -> ()
-- Ledger.Foreign.LedgerTypes.GovState
d_GovState_502 :: ()
d_GovState_502 = erased
-- Ledger.Foreign.LedgerTypes.CertEnv
d_CertEnv_504 = ()
type T_CertEnv_504 = CertEnv
pattern C_CertEnv'46'constructor_5247 a0 a1 a2 a3 = MkCertEnv a0 a1 a2 a3
check_CertEnv'46'constructor_5247 ::
  Integer ->
  T_PParams_238 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_452 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_CertEnv_504
check_CertEnv'46'constructor_5247 = MkCertEnv
cover_CertEnv_504 :: CertEnv -> ()
cover_CertEnv_504 x
  = case x of
      MkCertEnv _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv.epoch
d_epoch_514 :: T_CertEnv_504 -> Integer
d_epoch_514 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5247 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.pp
d_pp_516 :: T_CertEnv_504 -> T_PParams_238
d_pp_516 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5247 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.votes
d_votes_518 :: T_CertEnv_504 -> [T_GovVote_452]
d_votes_518 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5247 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.wdrls
d_wdrls_520 ::
  T_CertEnv_504 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_wdrls_520 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5247 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState
d_DState_522 = ()
type T_DState_522 = DState
pattern C_DState'46'constructor_5333 a0 a1 a2 = MkDState a0 a1 a2
check_DState'46'constructor_5333 ::
  T_HSMap_26 T_Credential_118 T_VDeleg_136 ->
  T_HSMap_26 T_Credential_118 T_Credential_118 ->
  T_HSMap_26 T_Credential_118 Integer -> T_DState_522
check_DState'46'constructor_5333 = MkDState
cover_DState_522 :: DState -> ()
cover_DState_522 x
  = case x of
      MkDState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState.voteDelegs
d_voteDelegs_530 ::
  T_DState_522 -> T_HSMap_26 T_Credential_118 T_VDeleg_136
d_voteDelegs_530 v0
  = case coe v0 of
      C_DState'46'constructor_5333 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.stakeDelegs
d_stakeDelegs_532 ::
  T_DState_522 -> T_HSMap_26 T_Credential_118 T_Credential_118
d_stakeDelegs_532 v0
  = case coe v0 of
      C_DState'46'constructor_5333 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.rewards
d_rewards_534 ::
  T_DState_522 -> T_HSMap_26 T_Credential_118 Integer
d_rewards_534 v0
  = case coe v0 of
      C_DState'46'constructor_5333 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState
d_PState_536 = ()
type T_PState_536 = PState
pattern C_PState'46'constructor_5395 a0 a1 = MkPState a0 a1
check_PState'46'constructor_5395 ::
  T_HSMap_26 T_Credential_118 T_Credential_118 ->
  T_HSMap_26 T_Credential_118 Integer -> T_PState_536
check_PState'46'constructor_5395 = MkPState
cover_PState_536 :: PState -> ()
cover_PState_536 x
  = case x of
      MkPState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PState.pools
d_pools_542 ::
  T_PState_536 -> T_HSMap_26 T_Credential_118 T_Credential_118
d_pools_542 v0
  = case coe v0 of
      C_PState'46'constructor_5395 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState.retiring
d_retiring_544 ::
  T_PState_536 -> T_HSMap_26 T_Credential_118 Integer
d_retiring_544 v0
  = case coe v0 of
      C_PState'46'constructor_5395 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState
d_GState_546 = ()
type T_GState_546 = GState
pattern C_GState'46'constructor_5453 a0 a1 = MkGState a0 a1
check_GState'46'constructor_5453 ::
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  T_GState_546
check_GState'46'constructor_5453 = MkGState
cover_GState_546 :: GState -> ()
cover_GState_546 x
  = case x of
      MkGState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState.dreps
d_dreps_552 :: T_GState_546 -> T_HSMap_26 T_Credential_118 Integer
d_dreps_552 v0
  = case coe v0 of
      C_GState'46'constructor_5453 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState.ccHotKeys
d_ccHotKeys_554 ::
  T_GState_546 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_ccHotKeys_554 v0
  = case coe v0 of
      C_GState'46'constructor_5453 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState
d_CertState_556 = ()
type T_CertState_556 = CertState
pattern C_CertState'46'constructor_5499 a0 a1 a2 = MkCertState a0 a1 a2
check_CertState'46'constructor_5499 ::
  T_DState_522 -> T_PState_536 -> T_GState_546 -> T_CertState_556
check_CertState'46'constructor_5499 = MkCertState
cover_CertState_556 :: CertState -> ()
cover_CertState_556 x
  = case x of
      MkCertState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState.dState
d_dState_564 :: T_CertState_556 -> T_DState_522
d_dState_564 v0
  = case coe v0 of
      C_CertState'46'constructor_5499 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.pState
d_pState_566 :: T_CertState_556 -> T_PState_536
d_pState_566 v0
  = case coe v0 of
      C_CertState'46'constructor_5499 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.gState
d_gState_568 :: T_CertState_556 -> T_GState_546
d_gState_568 v0
  = case coe v0 of
      C_CertState'46'constructor_5499 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.StakeDistrs
d_StakeDistrs_570 = ()
type T_StakeDistrs_570 = StakeDistrs
pattern C_StakeDistrs'46'constructor_5555 a0 = MkStakeDistrs a0
check_StakeDistrs'46'constructor_5555 ::
  T_HSMap_26 T_VDeleg_136 Integer -> T_StakeDistrs_570
check_StakeDistrs'46'constructor_5555 = MkStakeDistrs
cover_StakeDistrs_570 :: StakeDistrs -> ()
cover_StakeDistrs_570 x
  = case x of
      MkStakeDistrs _ -> ()
-- Ledger.Foreign.LedgerTypes.StakeDistrs.stakeDistr
d_stakeDistr_574 ::
  T_StakeDistrs_570 -> T_HSMap_26 T_VDeleg_136 Integer
d_stakeDistr_574 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_5555 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv
d_RatifyEnv_576 = ()
type T_RatifyEnv_576 = RatifyEnv
pattern C_RatifyEnv'46'constructor_5635 a0 a1 a2 a3 a4 = MkRatifyEnv a0 a1 a2 a3 a4
check_RatifyEnv'46'constructor_5635 ::
  T_StakeDistrs_570 ->
  Integer ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  Integer -> T_RatifyEnv_576
check_RatifyEnv'46'constructor_5635 = MkRatifyEnv
cover_RatifyEnv_576 :: RatifyEnv -> ()
cover_RatifyEnv_576 x
  = case x of
      MkRatifyEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reStakeDistrs
d_reStakeDistrs_588 :: T_RatifyEnv_576 -> T_StakeDistrs_570
d_reStakeDistrs_588 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_5635 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCurrentEpoch
d_reCurrentEpoch_590 :: T_RatifyEnv_576 -> Integer
d_reCurrentEpoch_590 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_5635 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reDReps
d_reDReps_592 ::
  T_RatifyEnv_576 -> T_HSMap_26 T_Credential_118 Integer
d_reDReps_592 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_5635 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCCHotKeys
d_reCCHotKeys_594 ::
  T_RatifyEnv_576 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_reCCHotKeys_594 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_5635 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reTreasury
d_reTreasury_596 :: T_RatifyEnv_576 -> Integer
d_reTreasury_596 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_5635 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState
d_RatifyState_598 = ()
type T_RatifyState_598 = RatifyState
pattern C_RatifyState'46'constructor_5747 a0 a1 a2 = MkRatifyState a0 a1 a2
check_RatifyState'46'constructor_5747 ::
  T_EnactState_360 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_430) ->
  Bool -> T_RatifyState_598
check_RatifyState'46'constructor_5747 = MkRatifyState
cover_RatifyState_598 :: RatifyState -> ()
cover_RatifyState_598 x
  = case x of
      MkRatifyState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyState.es
d_es_606 :: T_RatifyState_598 -> T_EnactState_360
d_es_606 v0
  = case coe v0 of
      C_RatifyState'46'constructor_5747 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.removed
d_removed_608 ::
  T_RatifyState_598 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny T_TxId_52 Integer)
       T_GovActionState_430)
d_removed_608 v0
  = case coe v0 of
      C_RatifyState'46'constructor_5747 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.delay
d_delay_610 :: T_RatifyState_598 -> Bool
d_delay_610 v0
  = case coe v0 of
      C_RatifyState'46'constructor_5747 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
