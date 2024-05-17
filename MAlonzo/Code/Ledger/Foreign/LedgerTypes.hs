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
type Slot = Integer

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
 { rsEnactState :: EnactState
 , rsRemoved    :: HSSet (GovActionID, GovActionState)
 , rsDelay      :: Bool
 }
data LedgerEnv = MkLedgerEnv
  { leSlot       :: Slot
  , lePPolicy    :: Maybe ScriptHash
  , lePParams    :: PParams
  , leEnactState :: EnactState
  }
data LedgerState = MkLedgerState
  { utxoSt    :: UTxOState
  , govSt     :: GovState
  , certState :: CertState
  }
data EnactEnv = MkEnactEnv
  { eeGid :: GovActionID
  , eeTreasury :: Coin
  , eeEpoch :: Epoch
  }
data Acnt = MkAcnt
  { treasury :: Coin
  , reserves :: Coin
  }
newtype NewEpochEnv = MkNewEpochEnv {stakeDistrs :: StakeDistrs}
data EpochState = MkEpochState
  { esAcnt       :: Acnt
  , esLState     :: LedgerState
  , esEnactState :: EnactState
  , esFut        :: RatifyState
  }
data NewEpochState = MkNewEpochState
  { lastEpoch  :: Epoch
  , epochState :: EpochState
  }
newtype ChainState = MkChainState
  { csNewEpochState :: NewEpochState
  }
data Block = MkBlock
  { blockTxs :: [Tx]
  , blockSlot :: Slot
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
-- Ledger.Foreign.LedgerTypes.Slot
d_Slot_68 :: ()
d_Slot_68 = erased
-- Ledger.Foreign.LedgerTypes.PParamsUpdate
d_PParamsUpdate_70 :: ()
d_PParamsUpdate_70 = erased
-- Ledger.Foreign.LedgerTypes.Anchor
d_Anchor_72 :: ()
d_Anchor_72 = erased
-- Ledger.Foreign.LedgerTypes.AuxiliaryData
d_AuxiliaryData_74 :: ()
d_AuxiliaryData_74 = erased
-- Ledger.Foreign.LedgerTypes.Datum
d_Datum_76 :: ()
d_Datum_76 = erased
-- Ledger.Foreign.LedgerTypes.Redeemer
d_Redeemer_78 :: ()
d_Redeemer_78 = erased
-- Ledger.Foreign.LedgerTypes.Network
d_Network_80 :: ()
d_Network_80 = erased
-- Ledger.Foreign.LedgerTypes.Script
d_Script_82 :: ()
d_Script_82 = erased
-- Ledger.Foreign.LedgerTypes.DataHash
d_DataHash_84 :: ()
d_DataHash_84 = erased
-- Ledger.Foreign.LedgerTypes.TxIn
d_TxIn_86 :: ()
d_TxIn_86 = erased
-- Ledger.Foreign.LedgerTypes.TxOut
d_TxOut_88 :: ()
d_TxOut_88 = erased
-- Ledger.Foreign.LedgerTypes.UTxO
d_UTxO_90 :: ()
d_UTxO_90 = erased
-- Ledger.Foreign.LedgerTypes.Hash
d_Hash_92 :: ()
d_Hash_92 = erased
-- Ledger.Foreign.LedgerTypes.GovActionID
d_GovActionID_94 :: ()
d_GovActionID_94 = erased
-- Ledger.Foreign.LedgerTypes.HashProtected
d_HashProtected_96 :: () -> ()
d_HashProtected_96 = erased
-- Ledger.Foreign.LedgerTypes.Tag
d_Tag_100 = ()
type T_Tag_100 = Tag
pattern C_Spend_102 = Spend
pattern C_Mint_104 = Mint
pattern C_Cert_106 = Cert
pattern C_Rewrd_108 = Rewrd
pattern C_VoteTag_110 = Vote
pattern C_Propose_112 = Propose
check_Spend_102 :: T_Tag_100
check_Spend_102 = Spend
check_Mint_104 :: T_Tag_100
check_Mint_104 = Mint
check_Cert_106 :: T_Tag_100
check_Cert_106 = Cert
check_Rewrd_108 :: T_Tag_100
check_Rewrd_108 = Rewrd
check_VoteTag_110 :: T_Tag_100
check_VoteTag_110 = Vote
check_Propose_112 :: T_Tag_100
check_Propose_112 = Propose
cover_Tag_100 :: Tag -> ()
cover_Tag_100 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Foreign.LedgerTypes.RdmrPtr
d_RdmrPtr_114 :: ()
d_RdmrPtr_114 = erased
-- Ledger.Foreign.LedgerTypes.ExUnits
d_ExUnits_116 :: ()
d_ExUnits_116 = erased
-- Ledger.Foreign.LedgerTypes.ProtVer
d_ProtVer_118 :: ()
d_ProtVer_118 = erased
-- Ledger.Foreign.LedgerTypes.Credential
d_Credential_120 = ()
type T_Credential_120 = Credential
pattern C_ScriptObj_122 a0 = ScriptObj a0
pattern C_KeyHashObj_124 a0 = KeyHashObj a0
check_ScriptObj_122 :: Integer -> T_Credential_120
check_ScriptObj_122 = ScriptObj
check_KeyHashObj_124 :: Integer -> T_Credential_120
check_KeyHashObj_124 = KeyHashObj
cover_Credential_120 :: Credential -> ()
cover_Credential_120 x
  = case x of
      ScriptObj _ -> ()
      KeyHashObj _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolParams
d_PoolParams_126 :: ()
d_PoolParams_126 = erased
-- Ledger.Foreign.LedgerTypes.RwdAddr
d_RwdAddr_128 :: ()
d_RwdAddr_128 = erased
-- Ledger.Foreign.LedgerTypes.GovRole
d_GovRole_130 = ()
type T_GovRole_130 = GovRole
pattern C_CC_132 = CC
pattern C_DRep_134 = DRep
pattern C_SPO_136 = SPO
check_CC_132 :: T_GovRole_130
check_CC_132 = CC
check_DRep_134 :: T_GovRole_130
check_DRep_134 = DRep
check_SPO_136 :: T_GovRole_130
check_SPO_136 = SPO
cover_GovRole_130 :: GovRole -> ()
cover_GovRole_130 x
  = case x of
      CC -> ()
      DRep -> ()
      SPO -> ()
-- Ledger.Foreign.LedgerTypes.VDeleg
d_VDeleg_138 = ()
type T_VDeleg_138 = VDeleg
pattern C_CredVoter_140 a0 a1 = CredVoter a0 a1
pattern C_AbstainRep_142 = AbstainRep
pattern C_NoConfidenceRep_144 = NoConfidenceRep
check_CredVoter_140 ::
  T_GovRole_130 -> T_Credential_120 -> T_VDeleg_138
check_CredVoter_140 = CredVoter
check_AbstainRep_142 :: T_VDeleg_138
check_AbstainRep_142 = AbstainRep
check_NoConfidenceRep_144 :: T_VDeleg_138
check_NoConfidenceRep_144 = NoConfidenceRep
cover_VDeleg_138 :: VDeleg -> ()
cover_VDeleg_138 x
  = case x of
      CredVoter _ _ -> ()
      AbstainRep -> ()
      NoConfidenceRep -> ()
-- Ledger.Foreign.LedgerTypes.TxCert
d_TxCert_146 = ()
type T_TxCert_146 = TxCert
pattern C_Delegate_148 a0 a1 a2 a3 = Delegate a0 a1 a2 a3
pattern C_Dereg_150 a0 = Dereg a0
pattern C_RegPool_152 a0 a1 = RegPool a0 a1
pattern C_RetirePool_154 a0 a1 = RetirePool a0 a1
pattern C_RegDRep_156 a0 a1 a2 = RegDRep a0 a1 a2
pattern C_DeRegDRep_158 a0 = DeRegDRep a0
pattern C_CCRegHot_160 a0 a1 = CCRegHot a0 a1
check_Delegate_148 ::
  T_Credential_120 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_VDeleg_138 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_120 ->
  Integer -> T_TxCert_146
check_Delegate_148 = Delegate
check_Dereg_150 :: T_Credential_120 -> T_TxCert_146
check_Dereg_150 = Dereg
check_RegPool_152 ::
  T_Credential_120 -> T_Credential_120 -> T_TxCert_146
check_RegPool_152 = RegPool
check_RetirePool_154 :: T_Credential_120 -> Integer -> T_TxCert_146
check_RetirePool_154 = RetirePool
check_RegDRep_156 ::
  T_Credential_120 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_TxCert_146
check_RegDRep_156 = RegDRep
check_DeRegDRep_158 :: T_Credential_120 -> T_TxCert_146
check_DeRegDRep_158 = DeRegDRep
check_CCRegHot_160 ::
  T_Credential_120 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_120 ->
  T_TxCert_146
check_CCRegHot_160 = CCRegHot
cover_TxCert_146 :: TxCert -> ()
cover_TxCert_146 x
  = case x of
      Delegate _ _ _ _ -> ()
      Dereg _ -> ()
      RegPool _ _ -> ()
      RetirePool _ _ -> ()
      RegDRep _ _ _ -> ()
      DeRegDRep _ -> ()
      CCRegHot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_162 = ()
type T_TxBody_162 = TxBody
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
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_TxCert_146 ->
  T_TxBody_162
check_TxBody'46'constructor_1547 = MkTxBody
cover_TxBody_162 :: TxBody -> ()
cover_TxBody_162 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody.txins
d_txins_186 ::
  T_TxBody_162 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_txins_186 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.refInputs
d_refInputs_188 ::
  T_TxBody_162 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_refInputs_188 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txouts
d_txouts_190 ::
  T_TxBody_162 ->
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
d_txouts_190 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_192 :: T_TxBody_162 -> Integer
d_txfee_192 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_194 ::
  T_TxBody_162 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_194 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_196 :: T_TxBody_162 -> Integer
d_txsize_196 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_198 :: T_TxBody_162 -> T_TxId_52
d_txid_198 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_200 ::
  T_TxBody_162 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_collateral_200 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_202 :: T_TxBody_162 -> [Integer]
d_reqSigHash_202 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_204 :: T_TxBody_162 -> Maybe Integer
d_scriptIntHash_204 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txcerts
d_txcerts_206 :: T_TxBody_162 -> [T_TxCert_146]
d_txcerts_206 v0
  = case coe v0 of
      C_TxBody'46'constructor_1547 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_208 = ()
type T_TxWitnesses_208 = TxWitnesses
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
       () () T_Tag_100 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer Integer)) ->
  T_TxWitnesses_208
check_TxWitnesses'46'constructor_1913 = MkTxWitnesses
cover_TxWitnesses_208 :: TxWitnesses -> ()
cover_TxWitnesses_208 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxWitnesses.vkSigs
d_vkSigs_218 ::
  T_TxWitnesses_208 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_vkSigs_218 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1913 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_220 :: T_TxWitnesses_208 -> [T_Empty_6]
d_scripts_220 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1913 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_222 ::
  T_TxWitnesses_208 ->
  T_HSMap_26
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txdats_222 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1913 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txrdmrs
d_txrdmrs_224 ::
  T_TxWitnesses_208 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_Tag_100 Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny Integer Integer))
d_txrdmrs_224 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1913 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_226 = ()
type T_Tx_226 = Tx
pattern C_Tx'46'constructor_2001 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_2001 ::
  T_TxBody_162 ->
  T_TxWitnesses_208 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_226
check_Tx'46'constructor_2001 = MkTx
cover_Tx_226 :: Tx -> ()
cover_Tx_226 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_234 :: T_Tx_226 -> T_TxBody_162
d_body_234 v0
  = case coe v0 of
      C_Tx'46'constructor_2001 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_236 :: T_Tx_226 -> T_TxWitnesses_208
d_wits_236 v0
  = case coe v0 of
      C_Tx'46'constructor_2001 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_238 ::
  T_Tx_226 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_238 v0
  = case coe v0 of
      C_Tx'46'constructor_2001 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_240 = ()
type T_PParams_240 = PParams
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
  Integer -> Integer -> T_PParams_240
check_PParams'46'constructor_2789 = MkPParams
cover_PParams_240 :: PParams -> ()
cover_PParams_240 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_292 :: T_PParams_240 -> Integer
d_a_292 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_294 :: T_PParams_240 -> Integer
d_b_294 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_296 :: T_PParams_240 -> Integer
d_maxBlockSize_296 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_298 :: T_PParams_240 -> Integer
d_maxTxSize_298 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_300 :: T_PParams_240 -> Integer
d_maxHeaderSize_300 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_302 :: T_PParams_240 -> Integer
d_maxValSize_302 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_304 :: T_PParams_240 -> Integer
d_minUTxOValue_304 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_306 :: T_PParams_240 -> Integer
d_poolDeposit_306 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.keyDeposit
d_keyDeposit_308 :: T_PParams_240 -> Integer
d_keyDeposit_308 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_310 :: T_PParams_240 -> Integer
d_Emax_310 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.nopt
d_nopt_312 :: T_PParams_240 -> Integer
d_nopt_312 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_314 ::
  T_PParams_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_314 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.votingThresholds
d_votingThresholds_316 ::
  T_PParams_240 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_votingThresholds_316 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_318 :: T_PParams_240 -> Integer
d_govActionLifetime_318 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_320 :: T_PParams_240 -> Integer
d_govActionDeposit_320 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_322 :: T_PParams_240 -> Integer
d_drepDeposit_322 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_324 :: T_PParams_240 -> Integer
d_drepActivity_324 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_326 :: T_PParams_240 -> Integer
d_ccMinSize_326 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_328 :: T_PParams_240 -> Integer
d_ccMaxTermLength_328 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_330 ::
  T_PParams_240 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_330 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_332 ::
  T_PParams_240 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_332 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_334 ::
  T_PParams_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_334 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_336 ::
  T_PParams_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_336 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_338 :: T_PParams_240 -> Integer
d_coinsPerUTxOWord_338 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_340 :: T_PParams_240 -> Integer
d_maxCollateralInputs_340 v0
  = case coe v0 of
      C_PParams'46'constructor_2789 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_342 = ()
type T_UTxOEnv_342 = UTxOEnv
pattern C_UTxOEnv'46'constructor_4119 a0 a1 = MkUTxOEnv a0 a1
check_UTxOEnv'46'constructor_4119 ::
  Integer -> T_PParams_240 -> T_UTxOEnv_342
check_UTxOEnv'46'constructor_4119 = MkUTxOEnv
cover_UTxOEnv_342 :: UTxOEnv -> ()
cover_UTxOEnv_342 x
  = case x of
      MkUTxOEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_348 :: T_UTxOEnv_342 -> Integer
d_slot_348 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_4119 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_350 :: T_UTxOEnv_342 -> T_PParams_240
d_pparams_350 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_4119 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_352 = ()
type T_UTxOState_352 = UTxOState
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
  Integer -> T_UTxOState_352
check_UTxOState'46'constructor_4161 = MkUTxOState
cover_UTxOState_352 :: UTxOState -> ()
cover_UTxOState_352 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_358 ::
  T_UTxOState_352 ->
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
d_utxo_358 v0
  = case coe v0 of
      C_UTxOState'46'constructor_4161 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_360 :: T_UTxOState_352 -> Integer
d_fees_360 v0
  = case coe v0 of
      C_UTxOState'46'constructor_4161 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState
d_EnactState_362 = ()
type T_EnactState_362 = EnactState
pattern C_EnactState'46'constructor_4267 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_EnactState'46'constructor_4267 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () (T_HSMap_26 T_Credential_120 Integer)
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
    () () T_PParams_240
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_120)
    Integer ->
  T_EnactState_362
check_EnactState'46'constructor_4267 = MkEnactState
cover_EnactState_362 :: EnactState -> ()
cover_EnactState_362 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactState.esCC
d_esCC_374 ::
  T_EnactState_362 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (Maybe
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny (T_HSMap_26 T_Credential_120 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esCC_374 v0
  = case coe v0 of
      C_EnactState'46'constructor_4267 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esConstitution
d_esConstitution_376 ::
  T_EnactState_362 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (Maybe Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esConstitution_376 v0
  = case coe v0 of
      C_EnactState'46'constructor_4267 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPV
d_esPV_378 ::
  T_EnactState_362 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPV_378 v0
  = case coe v0 of
      C_EnactState'46'constructor_4267 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPParams
d_esPParams_380 ::
  T_EnactState_362 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_PParams_240
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPParams_380 v0
  = case coe v0 of
      C_EnactState'46'constructor_4267 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esWithdrawals
d_esWithdrawals_382 ::
  T_EnactState_362 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_120)
    Integer
d_esWithdrawals_382 v0
  = case coe v0 of
      C_EnactState'46'constructor_4267 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv
d_GovEnv_384 = ()
type T_GovEnv_384 = GovEnv
pattern C_GovEnv'46'constructor_4395 a0 a1 a2 a3 a4 = MkGovEnv a0 a1 a2 a3 a4
check_GovEnv'46'constructor_4395 ::
  T_TxId_52 ->
  Integer ->
  T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_EnactState_362 -> T_GovEnv_384
check_GovEnv'46'constructor_4395 = MkGovEnv
cover_GovEnv_384 :: GovEnv -> ()
cover_GovEnv_384 x
  = case x of
      MkGovEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovEnv.geTxId
d_geTxId_396 :: T_GovEnv_384 -> T_TxId_52
d_geTxId_396 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4395 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEpoch
d_geEpoch_398 :: T_GovEnv_384 -> Integer
d_geEpoch_398 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4395 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePParams
d_gePParams_400 :: T_GovEnv_384 -> T_PParams_240
d_gePParams_400 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4395 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePPolicy
d_gePPolicy_402 :: T_GovEnv_384 -> Maybe Integer
d_gePPolicy_402 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4395 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEnactState
d_geEnactState_404 :: T_GovEnv_384 -> T_EnactState_362
d_geEnactState_404 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4395 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Voter
d_Voter_406 :: ()
d_Voter_406 = erased
-- Ledger.Foreign.LedgerTypes.GovAction
d_GovAction_408 = ()
type T_GovAction_408 = GovAction
pattern C_NoConfidence_410 = NoConfidence
pattern C_NewCommittee_412 a0 a1 a2 = NewCommittee a0 a1 a2
pattern C_NewConstitution_414 a0 a1 = NewConstitution a0 a1
pattern C_TriggerHF_416 a0 = TriggerHF a0
pattern C_ChangePParams_418 a0 = ChangePParams a0
pattern C_TreasuryWdrl_420 a0 = TreasuryWdrl a0
pattern C_Info_422 = Info
check_NoConfidence_410 :: T_GovAction_408
check_NoConfidence_410 = NoConfidence
check_NewCommittee_412 ::
  T_HSMap_26 T_Credential_120 Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Credential_120 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_408
check_NewCommittee_412 = NewCommittee
check_NewConstitution_414 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_GovAction_408
check_NewConstitution_414 = NewConstitution
check_TriggerHF_416 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_408
check_TriggerHF_416 = TriggerHF
check_ChangePParams_418 :: Integer -> T_GovAction_408
check_ChangePParams_418 = ChangePParams
check_TreasuryWdrl_420 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_120)
    Integer ->
  T_GovAction_408
check_TreasuryWdrl_420 = TreasuryWdrl
check_Info_422 :: T_GovAction_408
check_Info_422 = Info
cover_GovAction_408 :: GovAction -> ()
cover_GovAction_408 x
  = case x of
      NoConfidence -> ()
      NewCommittee _ _ _ -> ()
      NewConstitution _ _ -> ()
      TriggerHF _ -> ()
      ChangePParams _ -> ()
      TreasuryWdrl _ -> ()
      Info -> ()
-- Ledger.Foreign.LedgerTypes.Vote
d_Vote_424 = ()
type T_Vote_424 = Vote
pattern C_VoteYes_426 = VoteYes
pattern C_VoteNo_428 = VoteNo
pattern C_VoteAbstain_430 = VoteAbstain
check_VoteYes_426 :: T_Vote_424
check_VoteYes_426 = VoteYes
check_VoteNo_428 :: T_Vote_424
check_VoteNo_428 = VoteNo
check_VoteAbstain_430 :: T_Vote_424
check_VoteAbstain_430 = VoteAbstain
cover_Vote_424 :: Vote -> ()
cover_Vote_424 x
  = case x of
      VoteYes -> ()
      VoteNo -> ()
      VoteAbstain -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState
d_GovActionState_432 = ()
type T_GovActionState_432 = GovActionState
pattern C_GovActionState'46'constructor_4807 a0 a1 a2 a3 a4 = MkGovActionState a0 a1 a2 a3 a4
check_GovActionState'46'constructor_4807 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_GovRole_130 T_Credential_120)
    T_Vote_424 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_120 ->
  Integer ->
  T_GovAction_408 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  T_GovActionState_432
check_GovActionState'46'constructor_4807 = MkGovActionState
cover_GovActionState_432 :: GovActionState -> ()
cover_GovActionState_432 x
  = case x of
      MkGovActionState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState.gasVotes
d_gasVotes_444 ::
  T_GovActionState_432 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_GovRole_130 T_Credential_120)
    T_Vote_424
d_gasVotes_444 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4807 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasReturnAddr
d_gasReturnAddr_446 ::
  T_GovActionState_432 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_120
d_gasReturnAddr_446 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4807 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasExpiresIn
d_gasExpiresIn_448 :: T_GovActionState_432 -> Integer
d_gasExpiresIn_448 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4807 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasAction
d_gasAction_450 :: T_GovActionState_432 -> T_GovAction_408
d_gasAction_450 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4807 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasPrevAction
d_gasPrevAction_452 ::
  T_GovActionState_432 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gasPrevAction_452 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4807 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote
d_GovVote_454 = ()
type T_GovVote_454 = GovVote
pattern C_GovVote'46'constructor_4927 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_GovVote'46'constructor_4927 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_130 T_Credential_120 ->
  T_Vote_424 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_GovVote_454
check_GovVote'46'constructor_4927 = MkGovVote
cover_GovVote_454 :: GovVote -> ()
cover_GovVote_454 x
  = case x of
      MkGovVote _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovVote.gvGid
d_gvGid_464 ::
  T_GovVote_454 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gvGid_464 v0
  = case coe v0 of
      C_GovVote'46'constructor_4927 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVoter
d_gvVoter_466 ::
  T_GovVote_454 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_GovRole_130 T_Credential_120
d_gvVoter_466 v0
  = case coe v0 of
      C_GovVote'46'constructor_4927 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVote
d_gvVote_468 :: T_GovVote_454 -> T_Vote_424
d_gvVote_468 v0
  = case coe v0 of
      C_GovVote'46'constructor_4927 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvAnchor
d_gvAnchor_470 ::
  T_GovVote_454 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gvAnchor_470 v0
  = case coe v0 of
      C_GovVote'46'constructor_4927 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal
d_GovProposal_472 = ()
type T_GovProposal_472 = GovProposal
pattern C_GovProposal'46'constructor_5039 a0 a1 a2 a3 a4 a5 = MkGovProposal a0 a1 a2 a3 a4 a5
check_GovProposal'46'constructor_5039 ::
  T_GovAction_408 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_120 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_GovProposal_472
check_GovProposal'46'constructor_5039 = MkGovProposal
cover_GovProposal_472 :: GovProposal -> ()
cover_GovProposal_472 x
  = case x of
      MkGovProposal _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAction
d_gpAction_486 :: T_GovProposal_472 -> T_GovAction_408
d_gpAction_486 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5039 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPrevAction
d_gpPrevAction_488 ::
  T_GovProposal_472 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gpPrevAction_488 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5039 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPolicy
d_gpPolicy_490 :: T_GovProposal_472 -> Maybe Integer
d_gpPolicy_490 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5039 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpDeposit
d_gpDeposit_492 :: T_GovProposal_472 -> Integer
d_gpDeposit_492 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5039 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpReturnAddr
d_gpReturnAddr_494 ::
  T_GovProposal_472 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_120
d_gpReturnAddr_494 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5039 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAnchor
d_gpAnchor_496 ::
  T_GovProposal_472 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gpAnchor_496 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5039 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovSignal
d_GovSignal_498 = ()
type T_GovSignal_498 = GovSignal
pattern C_GovSignalVote_500 a0 = GovSignalVote a0
pattern C_GovSignalProposal_502 a0 = GovSignalProposal a0
check_GovSignalVote_500 :: T_GovVote_454 -> T_GovSignal_498
check_GovSignalVote_500 = GovSignalVote
check_GovSignalProposal_502 :: T_GovProposal_472 -> T_GovSignal_498
check_GovSignalProposal_502 = GovSignalProposal
cover_GovSignal_498 :: GovSignal -> ()
cover_GovSignal_498 x
  = case x of
      GovSignalVote _ -> ()
      GovSignalProposal _ -> ()
-- Ledger.Foreign.LedgerTypes.GovState
d_GovState_504 :: ()
d_GovState_504 = erased
-- Ledger.Foreign.LedgerTypes.CertEnv
d_CertEnv_506 = ()
type T_CertEnv_506 = CertEnv
pattern C_CertEnv'46'constructor_5247 a0 a1 a2 a3 = MkCertEnv a0 a1 a2 a3
check_CertEnv'46'constructor_5247 ::
  Integer ->
  T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_454 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_120)
    Integer ->
  T_CertEnv_506
check_CertEnv'46'constructor_5247 = MkCertEnv
cover_CertEnv_506 :: CertEnv -> ()
cover_CertEnv_506 x
  = case x of
      MkCertEnv _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv.epoch
d_epoch_516 :: T_CertEnv_506 -> Integer
d_epoch_516 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5247 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.pp
d_pp_518 :: T_CertEnv_506 -> T_PParams_240
d_pp_518 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5247 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.votes
d_votes_520 :: T_CertEnv_506 -> [T_GovVote_454]
d_votes_520 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5247 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.wdrls
d_wdrls_522 ::
  T_CertEnv_506 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_120)
    Integer
d_wdrls_522 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5247 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState
d_DState_524 = ()
type T_DState_524 = DState
pattern C_DState'46'constructor_5333 a0 a1 a2 = MkDState a0 a1 a2
check_DState'46'constructor_5333 ::
  T_HSMap_26 T_Credential_120 T_VDeleg_138 ->
  T_HSMap_26 T_Credential_120 T_Credential_120 ->
  T_HSMap_26 T_Credential_120 Integer -> T_DState_524
check_DState'46'constructor_5333 = MkDState
cover_DState_524 :: DState -> ()
cover_DState_524 x
  = case x of
      MkDState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState.voteDelegs
d_voteDelegs_532 ::
  T_DState_524 -> T_HSMap_26 T_Credential_120 T_VDeleg_138
d_voteDelegs_532 v0
  = case coe v0 of
      C_DState'46'constructor_5333 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.stakeDelegs
d_stakeDelegs_534 ::
  T_DState_524 -> T_HSMap_26 T_Credential_120 T_Credential_120
d_stakeDelegs_534 v0
  = case coe v0 of
      C_DState'46'constructor_5333 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.rewards
d_rewards_536 ::
  T_DState_524 -> T_HSMap_26 T_Credential_120 Integer
d_rewards_536 v0
  = case coe v0 of
      C_DState'46'constructor_5333 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState
d_PState_538 = ()
type T_PState_538 = PState
pattern C_PState'46'constructor_5395 a0 a1 = MkPState a0 a1
check_PState'46'constructor_5395 ::
  T_HSMap_26 T_Credential_120 T_Credential_120 ->
  T_HSMap_26 T_Credential_120 Integer -> T_PState_538
check_PState'46'constructor_5395 = MkPState
cover_PState_538 :: PState -> ()
cover_PState_538 x
  = case x of
      MkPState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PState.pools
d_pools_544 ::
  T_PState_538 -> T_HSMap_26 T_Credential_120 T_Credential_120
d_pools_544 v0
  = case coe v0 of
      C_PState'46'constructor_5395 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState.retiring
d_retiring_546 ::
  T_PState_538 -> T_HSMap_26 T_Credential_120 Integer
d_retiring_546 v0
  = case coe v0 of
      C_PState'46'constructor_5395 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState
d_GState_548 = ()
type T_GState_548 = GState
pattern C_GState'46'constructor_5453 a0 a1 = MkGState a0 a1
check_GState'46'constructor_5453 ::
  T_HSMap_26 T_Credential_120 Integer ->
  T_HSMap_26
    T_Credential_120
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_120) ->
  T_GState_548
check_GState'46'constructor_5453 = MkGState
cover_GState_548 :: GState -> ()
cover_GState_548 x
  = case x of
      MkGState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState.dreps
d_dreps_554 :: T_GState_548 -> T_HSMap_26 T_Credential_120 Integer
d_dreps_554 v0
  = case coe v0 of
      C_GState'46'constructor_5453 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState.ccHotKeys
d_ccHotKeys_556 ::
  T_GState_548 ->
  T_HSMap_26 T_Credential_120 (Maybe T_Credential_120)
d_ccHotKeys_556 v0
  = case coe v0 of
      C_GState'46'constructor_5453 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState
d_CertState_558 = ()
type T_CertState_558 = CertState
pattern C_CertState'46'constructor_5499 a0 a1 a2 = MkCertState a0 a1 a2
check_CertState'46'constructor_5499 ::
  T_DState_524 -> T_PState_538 -> T_GState_548 -> T_CertState_558
check_CertState'46'constructor_5499 = MkCertState
cover_CertState_558 :: CertState -> ()
cover_CertState_558 x
  = case x of
      MkCertState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState.dState
d_dState_566 :: T_CertState_558 -> T_DState_524
d_dState_566 v0
  = case coe v0 of
      C_CertState'46'constructor_5499 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.pState
d_pState_568 :: T_CertState_558 -> T_PState_538
d_pState_568 v0
  = case coe v0 of
      C_CertState'46'constructor_5499 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.gState
d_gState_570 :: T_CertState_558 -> T_GState_548
d_gState_570 v0
  = case coe v0 of
      C_CertState'46'constructor_5499 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.StakeDistrs
d_StakeDistrs_572 = ()
type T_StakeDistrs_572 = StakeDistrs
pattern C_StakeDistrs'46'constructor_5555 a0 = MkStakeDistrs a0
check_StakeDistrs'46'constructor_5555 ::
  T_HSMap_26 T_VDeleg_138 Integer -> T_StakeDistrs_572
check_StakeDistrs'46'constructor_5555 = MkStakeDistrs
cover_StakeDistrs_572 :: StakeDistrs -> ()
cover_StakeDistrs_572 x
  = case x of
      MkStakeDistrs _ -> ()
-- Ledger.Foreign.LedgerTypes.StakeDistrs.stakeDistr
d_stakeDistr_576 ::
  T_StakeDistrs_572 -> T_HSMap_26 T_VDeleg_138 Integer
d_stakeDistr_576 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_5555 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv
d_RatifyEnv_578 = ()
type T_RatifyEnv_578 = RatifyEnv
pattern C_RatifyEnv'46'constructor_5635 a0 a1 a2 a3 a4 = MkRatifyEnv a0 a1 a2 a3 a4
check_RatifyEnv'46'constructor_5635 ::
  T_StakeDistrs_572 ->
  Integer ->
  T_HSMap_26 T_Credential_120 Integer ->
  T_HSMap_26
    T_Credential_120
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_120) ->
  Integer -> T_RatifyEnv_578
check_RatifyEnv'46'constructor_5635 = MkRatifyEnv
cover_RatifyEnv_578 :: RatifyEnv -> ()
cover_RatifyEnv_578 x
  = case x of
      MkRatifyEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reStakeDistrs
d_reStakeDistrs_590 :: T_RatifyEnv_578 -> T_StakeDistrs_572
d_reStakeDistrs_590 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_5635 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCurrentEpoch
d_reCurrentEpoch_592 :: T_RatifyEnv_578 -> Integer
d_reCurrentEpoch_592 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_5635 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reDReps
d_reDReps_594 ::
  T_RatifyEnv_578 -> T_HSMap_26 T_Credential_120 Integer
d_reDReps_594 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_5635 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCCHotKeys
d_reCCHotKeys_596 ::
  T_RatifyEnv_578 ->
  T_HSMap_26 T_Credential_120 (Maybe T_Credential_120)
d_reCCHotKeys_596 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_5635 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reTreasury
d_reTreasury_598 :: T_RatifyEnv_578 -> Integer
d_reTreasury_598 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_5635 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState
d_RatifyState_600 = ()
type T_RatifyState_600 = RatifyState
pattern C_RatifyState'46'constructor_5747 a0 a1 a2 = MkRatifyState a0 a1 a2
check_RatifyState'46'constructor_5747 ::
  T_EnactState_362 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_432) ->
  Bool -> T_RatifyState_600
check_RatifyState'46'constructor_5747 = MkRatifyState
cover_RatifyState_600 :: RatifyState -> ()
cover_RatifyState_600 x
  = case x of
      MkRatifyState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyState.es
d_es_608 :: T_RatifyState_600 -> T_EnactState_362
d_es_608 v0
  = case coe v0 of
      C_RatifyState'46'constructor_5747 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.removed
d_removed_610 ::
  T_RatifyState_600 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny T_TxId_52 Integer)
       T_GovActionState_432)
d_removed_610 v0
  = case coe v0 of
      C_RatifyState'46'constructor_5747 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.delay
d_delay_612 :: T_RatifyState_600 -> Bool
d_delay_612 v0
  = case coe v0 of
      C_RatifyState'46'constructor_5747 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv
d_LEnv_614 = ()
type T_LEnv_614 = LedgerEnv
pattern C_LEnv'46'constructor_5819 a0 a1 a2 a3 = MkLedgerEnv a0 a1 a2 a3
check_LEnv'46'constructor_5819 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_PParams_240 -> T_EnactState_362 -> T_LEnv_614
check_LEnv'46'constructor_5819 = MkLedgerEnv
cover_LEnv_614 :: LedgerEnv -> ()
cover_LEnv_614 x
  = case x of
      MkLedgerEnv _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.LEnv.slot
d_slot_624 :: T_LEnv_614 -> Integer
d_slot_624 v0
  = case coe v0 of
      C_LEnv'46'constructor_5819 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.ppolicy
d_ppolicy_626 :: T_LEnv_614 -> Maybe Integer
d_ppolicy_626 v0
  = case coe v0 of
      C_LEnv'46'constructor_5819 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.pparams
d_pparams_628 :: T_LEnv_614 -> T_PParams_240
d_pparams_628 v0
  = case coe v0 of
      C_LEnv'46'constructor_5819 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.enactState
d_enactState_630 :: T_LEnv_614 -> T_EnactState_362
d_enactState_630 v0
  = case coe v0 of
      C_LEnv'46'constructor_5819 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState
d_LState_632 = ()
type T_LState_632 = LedgerState
pattern C_LState'46'constructor_5893 a0 a1 a2 = MkLedgerState a0 a1 a2
check_LState'46'constructor_5893 ::
  T_UTxOState_352 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_432) ->
  T_CertState_558 -> T_LState_632
check_LState'46'constructor_5893 = MkLedgerState
cover_LState_632 :: LedgerState -> ()
cover_LState_632 x
  = case x of
      MkLedgerState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.LState.utxoSt
d_utxoSt_640 :: T_LState_632 -> T_UTxOState_352
d_utxoSt_640 v0
  = case coe v0 of
      C_LState'46'constructor_5893 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState.govSt
d_govSt_642 ::
  T_LState_632 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_TxId_52 Integer)
     T_GovActionState_432]
d_govSt_642 v0
  = case coe v0 of
      C_LState'46'constructor_5893 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState.certState
d_certState_644 :: T_LState_632 -> T_CertState_558
d_certState_644 v0
  = case coe v0 of
      C_LState'46'constructor_5893 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv
d_EnactEnv_646 = ()
type T_EnactEnv_646 = EnactEnv
pattern C_EnactEnv'46'constructor_5951 a0 a1 a2 = MkEnactEnv a0 a1 a2
check_EnactEnv'46'constructor_5951 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  Integer -> Integer -> T_EnactEnv_646
check_EnactEnv'46'constructor_5951 = MkEnactEnv
cover_EnactEnv_646 :: EnactEnv -> ()
cover_EnactEnv_646 x
  = case x of
      MkEnactEnv _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactEnv.gid
d_gid_654 ::
  T_EnactEnv_646 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gid_654 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_5951 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv.treasury
d_treasury_656 :: T_EnactEnv_646 -> Integer
d_treasury_656 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_5951 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv.epoch
d_epoch_658 :: T_EnactEnv_646 -> Integer
d_epoch_658 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_5951 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Acnt
d_Acnt_660 = ()
type T_Acnt_660 = Acnt
pattern C_Acnt'46'constructor_6005 a0 a1 = MkAcnt a0 a1
check_Acnt'46'constructor_6005 :: Integer -> Integer -> T_Acnt_660
check_Acnt'46'constructor_6005 = MkAcnt
cover_Acnt_660 :: Acnt -> ()
cover_Acnt_660 x
  = case x of
      MkAcnt _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Acnt.treasury
d_treasury_666 :: T_Acnt_660 -> Integer
d_treasury_666 v0
  = case coe v0 of
      C_Acnt'46'constructor_6005 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Acnt.reserves
d_reserves_668 :: T_Acnt_660 -> Integer
d_reserves_668 v0
  = case coe v0 of
      C_Acnt'46'constructor_6005 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochEnv
d_NewEpochEnv_670 = ()
type T_NewEpochEnv_670 = NewEpochEnv
pattern C_NewEpochEnv'46'constructor_6045 a0 = MkNewEpochEnv a0
check_NewEpochEnv'46'constructor_6045 ::
  T_StakeDistrs_572 -> T_NewEpochEnv_670
check_NewEpochEnv'46'constructor_6045 = MkNewEpochEnv
cover_NewEpochEnv_670 :: NewEpochEnv -> ()
cover_NewEpochEnv_670 x
  = case x of
      MkNewEpochEnv _ -> ()
-- Ledger.Foreign.LedgerTypes.NewEpochEnv.stakeDistrs
d_stakeDistrs_674 :: T_NewEpochEnv_670 -> T_StakeDistrs_572
d_stakeDistrs_674 v0
  = case coe v0 of
      C_NewEpochEnv'46'constructor_6045 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState
d_EpochState_676 = ()
type T_EpochState_676 = EpochState
pattern C_EpochState'46'constructor_6089 a0 a1 a2 a3 = MkEpochState a0 a1 a2 a3
check_EpochState'46'constructor_6089 ::
  T_Acnt_660 ->
  T_LState_632 ->
  T_EnactState_362 -> T_RatifyState_600 -> T_EpochState_676
check_EpochState'46'constructor_6089 = MkEpochState
cover_EpochState_676 :: EpochState -> ()
cover_EpochState_676 x
  = case x of
      MkEpochState _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EpochState.acnt
d_acnt_686 :: T_EpochState_676 -> T_Acnt_660
d_acnt_686 v0
  = case coe v0 of
      C_EpochState'46'constructor_6089 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.ls
d_ls_688 :: T_EpochState_676 -> T_LState_632
d_ls_688 v0
  = case coe v0 of
      C_EpochState'46'constructor_6089 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.es
d_es_690 :: T_EpochState_676 -> T_EnactState_362
d_es_690 v0
  = case coe v0 of
      C_EpochState'46'constructor_6089 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.fut
d_fut_692 :: T_EpochState_676 -> T_RatifyState_600
d_fut_692 v0
  = case coe v0 of
      C_EpochState'46'constructor_6089 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState
d_NewEpochState_694 = ()
type T_NewEpochState_694 = NewEpochState
pattern C_NewEpochState'46'constructor_6159 a0 a1 = MkNewEpochState a0 a1
check_NewEpochState'46'constructor_6159 ::
  Integer -> T_EpochState_676 -> T_NewEpochState_694
check_NewEpochState'46'constructor_6159 = MkNewEpochState
cover_NewEpochState_694 :: NewEpochState -> ()
cover_NewEpochState_694 x
  = case x of
      MkNewEpochState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.NewEpochState.lastEpoch
d_lastEpoch_700 :: T_NewEpochState_694 -> Integer
d_lastEpoch_700 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_6159 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState.epochState
d_epochState_702 :: T_NewEpochState_694 -> T_EpochState_676
d_epochState_702 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_6159 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.ChainState
d_ChainState_704 = ()
type T_ChainState_704 = ChainState
pattern C_ChainState'46'constructor_6199 a0 = MkChainState a0
check_ChainState'46'constructor_6199 ::
  T_NewEpochState_694 -> T_ChainState_704
check_ChainState'46'constructor_6199 = MkChainState
cover_ChainState_704 :: ChainState -> ()
cover_ChainState_704 x
  = case x of
      MkChainState _ -> ()
-- Ledger.Foreign.LedgerTypes.ChainState.csNewEpochState
d_csNewEpochState_708 :: T_ChainState_704 -> T_NewEpochState_694
d_csNewEpochState_708 v0
  = case coe v0 of
      C_ChainState'46'constructor_6199 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Block
d_Block_710 = ()
type T_Block_710 = Block
pattern C_Block'46'constructor_6235 a0 a1 = MkBlock a0 a1
check_Block'46'constructor_6235 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Tx_226 ->
  Integer -> T_Block_710
check_Block'46'constructor_6235 = MkBlock
cover_Block_710 :: Block -> ()
cover_Block_710 x
  = case x of
      MkBlock _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Block.blockTxs
d_blockTxs_716 :: T_Block_710 -> [T_Tx_226]
d_blockTxs_716 v0
  = case coe v0 of
      C_Block'46'constructor_6235 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Block.blockSlot
d_blockSlot_718 :: T_Block_710 -> Integer
d_blockSlot_718 v0
  = case coe v0 of
      C_Block'46'constructor_6235 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
