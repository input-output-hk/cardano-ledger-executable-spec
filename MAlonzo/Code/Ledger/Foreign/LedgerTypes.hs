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
data DrepThresholds = MkDrepThresholds
  { p1      :: Rational
  , p2a     :: Rational
  , p2b     :: Rational
  , p3      :: Rational
  , p4      :: Rational
  , p5a     :: Rational
  , p5b     :: Rational
  , p5c     :: Rational
  , p5d     :: Rational
  , p6      :: Rational
  }
  deriving Show

data PoolThresholds = MkPoolThresholds
  { q1  :: Rational
  , q2a :: Rational
  , q2b :: Rational
  , q4  :: Rational
  , q5e :: Rational
  }
  deriving Show

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
  , poolVotingThresholds :: PoolThresholds
  , drepVotingThresholds :: DrepThresholds
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
  , coinsPerUTxOByte    :: Coin
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
data DelegEnv = MkDelegEnv
  { dePParams :: PParams
  , dePools :: HSMap Credential PoolParams
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
-- Ledger.Foreign.LedgerTypes.DrepThresholds
d_DrepThresholds_240 = ()
type T_DrepThresholds_240 = DrepThresholds
pattern C_DrepThresholds'46'constructor_2143 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = MkDrepThresholds a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
check_DrepThresholds'46'constructor_2143 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_DrepThresholds_240
check_DrepThresholds'46'constructor_2143 = MkDrepThresholds
cover_DrepThresholds_240 :: DrepThresholds -> ()
cover_DrepThresholds_240 x
  = case x of
      MkDrepThresholds _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P1
d_P1_262 ::
  T_DrepThresholds_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P1_262 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P2a
d_P2a_264 ::
  T_DrepThresholds_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P2a_264 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P2b
d_P2b_266 ::
  T_DrepThresholds_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P2b_266 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P3
d_P3_268 ::
  T_DrepThresholds_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P3_268 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P4
d_P4_270 ::
  T_DrepThresholds_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P4_270 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5a
d_P5a_272 ::
  T_DrepThresholds_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5a_272 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5b
d_P5b_274 ::
  T_DrepThresholds_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5b_274 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5c
d_P5c_276 ::
  T_DrepThresholds_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5c_276 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5d
d_P5d_278 ::
  T_DrepThresholds_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5d_278 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P6
d_P6_280 ::
  T_DrepThresholds_240 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P6_280 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_2143 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds
d_PoolThresholds_282 = ()
type T_PoolThresholds_282 = PoolThresholds
pattern C_PoolThresholds'46'constructor_2411 a0 a1 a2 a3 a4 = MkPoolThresholds a0 a1 a2 a3 a4
check_PoolThresholds'46'constructor_2411 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_PoolThresholds_282
check_PoolThresholds'46'constructor_2411 = MkPoolThresholds
cover_PoolThresholds_282 :: PoolThresholds -> ()
cover_PoolThresholds_282 x
  = case x of
      MkPoolThresholds _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q1
d_Q1_294 ::
  T_PoolThresholds_282 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q1_294 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2411 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q2a
d_Q2a_296 ::
  T_PoolThresholds_282 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q2a_296 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2411 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q2b
d_Q2b_298 ::
  T_PoolThresholds_282 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q2b_298 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2411 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q4
d_Q4_300 ::
  T_PoolThresholds_282 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q4_300 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2411 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q5e
d_Q5e_302 ::
  T_PoolThresholds_282 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q5e_302 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_2411 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_304 = ()
type T_PParams_304 = PParams
pattern C_PParams'46'constructor_3285 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25
check_PParams'46'constructor_3285 ::
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
  T_PoolThresholds_282 ->
  T_DrepThresholds_240 ->
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
  Integer -> Integer -> T_PParams_304
check_PParams'46'constructor_3285 = MkPParams
cover_PParams_304 :: PParams -> ()
cover_PParams_304 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_358 :: T_PParams_304 -> Integer
d_a_358 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_360 :: T_PParams_304 -> Integer
d_b_360 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_362 :: T_PParams_304 -> Integer
d_maxBlockSize_362 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_364 :: T_PParams_304 -> Integer
d_maxTxSize_364 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_366 :: T_PParams_304 -> Integer
d_maxHeaderSize_366 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_368 :: T_PParams_304 -> Integer
d_maxValSize_368 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_370 :: T_PParams_304 -> Integer
d_minUTxOValue_370 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_372 :: T_PParams_304 -> Integer
d_poolDeposit_372 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.keyDeposit
d_keyDeposit_374 :: T_PParams_304 -> Integer
d_keyDeposit_374 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_376 :: T_PParams_304 -> Integer
d_Emax_376 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.nopt
d_nopt_378 :: T_PParams_304 -> Integer
d_nopt_378 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_380 ::
  T_PParams_304 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_380 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolVotingThresholds
d_poolVotingThresholds_382 :: T_PParams_304 -> T_PoolThresholds_282
d_poolVotingThresholds_382 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepVotingThresholds
d_drepVotingThresholds_384 :: T_PParams_304 -> T_DrepThresholds_240
d_drepVotingThresholds_384 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_386 :: T_PParams_304 -> Integer
d_govActionLifetime_386 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_388 :: T_PParams_304 -> Integer
d_govActionDeposit_388 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_390 :: T_PParams_304 -> Integer
d_drepDeposit_390 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_392 :: T_PParams_304 -> Integer
d_drepActivity_392 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_394 :: T_PParams_304 -> Integer
d_ccMinSize_394 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_396 :: T_PParams_304 -> Integer
d_ccMaxTermLength_396 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_398 ::
  T_PParams_304 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_398 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_400 ::
  T_PParams_304 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_400 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_402 ::
  T_PParams_304 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_402 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_404 ::
  T_PParams_304 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_404 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_406 :: T_PParams_304 -> Integer
d_coinsPerUTxOByte_406 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_408 :: T_PParams_304 -> Integer
d_maxCollateralInputs_408 v0
  = case coe v0 of
      C_PParams'46'constructor_3285 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_410 = ()
type T_UTxOEnv_410 = UTxOEnv
pattern C_UTxOEnv'46'constructor_4719 a0 a1 = MkUTxOEnv a0 a1
check_UTxOEnv'46'constructor_4719 ::
  Integer -> T_PParams_304 -> T_UTxOEnv_410
check_UTxOEnv'46'constructor_4719 = MkUTxOEnv
cover_UTxOEnv_410 :: UTxOEnv -> ()
cover_UTxOEnv_410 x
  = case x of
      MkUTxOEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_416 :: T_UTxOEnv_410 -> Integer
d_slot_416 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_4719 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_418 :: T_UTxOEnv_410 -> T_PParams_304
d_pparams_418 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_4719 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_420 = ()
type T_UTxOState_420 = UTxOState
pattern C_UTxOState'46'constructor_4761 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_4761 ::
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
  Integer -> T_UTxOState_420
check_UTxOState'46'constructor_4761 = MkUTxOState
cover_UTxOState_420 :: UTxOState -> ()
cover_UTxOState_420 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_426 ::
  T_UTxOState_420 ->
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
d_utxo_426 v0
  = case coe v0 of
      C_UTxOState'46'constructor_4761 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_428 :: T_UTxOState_420 -> Integer
d_fees_428 v0
  = case coe v0 of
      C_UTxOState'46'constructor_4761 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState
d_EnactState_430 = ()
type T_EnactState_430 = EnactState
pattern C_EnactState'46'constructor_4867 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_EnactState'46'constructor_4867 ::
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
    () () T_PParams_304
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_120)
    Integer ->
  T_EnactState_430
check_EnactState'46'constructor_4867 = MkEnactState
cover_EnactState_430 :: EnactState -> ()
cover_EnactState_430 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactState.esCC
d_esCC_442 ::
  T_EnactState_430 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (Maybe
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny (T_HSMap_26 T_Credential_120 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esCC_442 v0
  = case coe v0 of
      C_EnactState'46'constructor_4867 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esConstitution
d_esConstitution_444 ::
  T_EnactState_430 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (Maybe Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esConstitution_444 v0
  = case coe v0 of
      C_EnactState'46'constructor_4867 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPV
d_esPV_446 ::
  T_EnactState_430 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPV_446 v0
  = case coe v0 of
      C_EnactState'46'constructor_4867 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPParams
d_esPParams_448 ::
  T_EnactState_430 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_PParams_304
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPParams_448 v0
  = case coe v0 of
      C_EnactState'46'constructor_4867 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esWithdrawals
d_esWithdrawals_450 ::
  T_EnactState_430 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_120)
    Integer
d_esWithdrawals_450 v0
  = case coe v0 of
      C_EnactState'46'constructor_4867 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv
d_GovEnv_452 = ()
type T_GovEnv_452 = GovEnv
pattern C_GovEnv'46'constructor_4995 a0 a1 a2 a3 a4 = MkGovEnv a0 a1 a2 a3 a4
check_GovEnv'46'constructor_4995 ::
  T_TxId_52 ->
  Integer ->
  T_PParams_304 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_EnactState_430 -> T_GovEnv_452
check_GovEnv'46'constructor_4995 = MkGovEnv
cover_GovEnv_452 :: GovEnv -> ()
cover_GovEnv_452 x
  = case x of
      MkGovEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovEnv.geTxId
d_geTxId_464 :: T_GovEnv_452 -> T_TxId_52
d_geTxId_464 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4995 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEpoch
d_geEpoch_466 :: T_GovEnv_452 -> Integer
d_geEpoch_466 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4995 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePParams
d_gePParams_468 :: T_GovEnv_452 -> T_PParams_304
d_gePParams_468 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4995 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePPolicy
d_gePPolicy_470 :: T_GovEnv_452 -> Maybe Integer
d_gePPolicy_470 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4995 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEnactState
d_geEnactState_472 :: T_GovEnv_452 -> T_EnactState_430
d_geEnactState_472 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4995 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Voter
d_Voter_474 :: ()
d_Voter_474 = erased
-- Ledger.Foreign.LedgerTypes.GovAction
d_GovAction_476 = ()
type T_GovAction_476 = GovAction
pattern C_NoConfidence_478 = NoConfidence
pattern C_NewCommittee_480 a0 a1 a2 = NewCommittee a0 a1 a2
pattern C_NewConstitution_482 a0 a1 = NewConstitution a0 a1
pattern C_TriggerHF_484 a0 = TriggerHF a0
pattern C_ChangePParams_486 a0 = ChangePParams a0
pattern C_TreasuryWdrl_488 a0 = TreasuryWdrl a0
pattern C_Info_490 = Info
check_NoConfidence_478 :: T_GovAction_476
check_NoConfidence_478 = NoConfidence
check_NewCommittee_480 ::
  T_HSMap_26 T_Credential_120 Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Credential_120 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_476
check_NewCommittee_480 = NewCommittee
check_NewConstitution_482 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_GovAction_476
check_NewConstitution_482 = NewConstitution
check_TriggerHF_484 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_476
check_TriggerHF_484 = TriggerHF
check_ChangePParams_486 :: Integer -> T_GovAction_476
check_ChangePParams_486 = ChangePParams
check_TreasuryWdrl_488 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_120)
    Integer ->
  T_GovAction_476
check_TreasuryWdrl_488 = TreasuryWdrl
check_Info_490 :: T_GovAction_476
check_Info_490 = Info
cover_GovAction_476 :: GovAction -> ()
cover_GovAction_476 x
  = case x of
      NoConfidence -> ()
      NewCommittee _ _ _ -> ()
      NewConstitution _ _ -> ()
      TriggerHF _ -> ()
      ChangePParams _ -> ()
      TreasuryWdrl _ -> ()
      Info -> ()
-- Ledger.Foreign.LedgerTypes.Vote
d_Vote_492 = ()
type T_Vote_492 = Vote
pattern C_VoteYes_494 = VoteYes
pattern C_VoteNo_496 = VoteNo
pattern C_VoteAbstain_498 = VoteAbstain
check_VoteYes_494 :: T_Vote_492
check_VoteYes_494 = VoteYes
check_VoteNo_496 :: T_Vote_492
check_VoteNo_496 = VoteNo
check_VoteAbstain_498 :: T_Vote_492
check_VoteAbstain_498 = VoteAbstain
cover_Vote_492 :: Vote -> ()
cover_Vote_492 x
  = case x of
      VoteYes -> ()
      VoteNo -> ()
      VoteAbstain -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState
d_GovActionState_500 = ()
type T_GovActionState_500 = GovActionState
pattern C_GovActionState'46'constructor_5407 a0 a1 a2 a3 a4 = MkGovActionState a0 a1 a2 a3 a4
check_GovActionState'46'constructor_5407 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_GovRole_130 T_Credential_120)
    T_Vote_492 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_120 ->
  Integer ->
  T_GovAction_476 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  T_GovActionState_500
check_GovActionState'46'constructor_5407 = MkGovActionState
cover_GovActionState_500 :: GovActionState -> ()
cover_GovActionState_500 x
  = case x of
      MkGovActionState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState.gasVotes
d_gasVotes_512 ::
  T_GovActionState_500 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_GovRole_130 T_Credential_120)
    T_Vote_492
d_gasVotes_512 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5407 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasReturnAddr
d_gasReturnAddr_514 ::
  T_GovActionState_500 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_120
d_gasReturnAddr_514 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5407 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasExpiresIn
d_gasExpiresIn_516 :: T_GovActionState_500 -> Integer
d_gasExpiresIn_516 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5407 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasAction
d_gasAction_518 :: T_GovActionState_500 -> T_GovAction_476
d_gasAction_518 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5407 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasPrevAction
d_gasPrevAction_520 ::
  T_GovActionState_500 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gasPrevAction_520 v0
  = case coe v0 of
      C_GovActionState'46'constructor_5407 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote
d_GovVote_522 = ()
type T_GovVote_522 = GovVote
pattern C_GovVote'46'constructor_5527 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_GovVote'46'constructor_5527 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_130 T_Credential_120 ->
  T_Vote_492 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_GovVote_522
check_GovVote'46'constructor_5527 = MkGovVote
cover_GovVote_522 :: GovVote -> ()
cover_GovVote_522 x
  = case x of
      MkGovVote _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovVote.gvGid
d_gvGid_532 ::
  T_GovVote_522 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gvGid_532 v0
  = case coe v0 of
      C_GovVote'46'constructor_5527 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVoter
d_gvVoter_534 ::
  T_GovVote_522 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_GovRole_130 T_Credential_120
d_gvVoter_534 v0
  = case coe v0 of
      C_GovVote'46'constructor_5527 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVote
d_gvVote_536 :: T_GovVote_522 -> T_Vote_492
d_gvVote_536 v0
  = case coe v0 of
      C_GovVote'46'constructor_5527 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvAnchor
d_gvAnchor_538 ::
  T_GovVote_522 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gvAnchor_538 v0
  = case coe v0 of
      C_GovVote'46'constructor_5527 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal
d_GovProposal_540 = ()
type T_GovProposal_540 = GovProposal
pattern C_GovProposal'46'constructor_5639 a0 a1 a2 a3 a4 a5 = MkGovProposal a0 a1 a2 a3 a4 a5
check_GovProposal'46'constructor_5639 ::
  T_GovAction_476 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_120 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_GovProposal_540
check_GovProposal'46'constructor_5639 = MkGovProposal
cover_GovProposal_540 :: GovProposal -> ()
cover_GovProposal_540 x
  = case x of
      MkGovProposal _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAction
d_gpAction_554 :: T_GovProposal_540 -> T_GovAction_476
d_gpAction_554 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5639 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPrevAction
d_gpPrevAction_556 ::
  T_GovProposal_540 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gpPrevAction_556 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5639 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPolicy
d_gpPolicy_558 :: T_GovProposal_540 -> Maybe Integer
d_gpPolicy_558 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5639 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpDeposit
d_gpDeposit_560 :: T_GovProposal_540 -> Integer
d_gpDeposit_560 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5639 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpReturnAddr
d_gpReturnAddr_562 ::
  T_GovProposal_540 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_120
d_gpReturnAddr_562 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5639 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAnchor
d_gpAnchor_564 ::
  T_GovProposal_540 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gpAnchor_564 v0
  = case coe v0 of
      C_GovProposal'46'constructor_5639 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovSignal
d_GovSignal_566 = ()
type T_GovSignal_566 = GovSignal
pattern C_GovSignalVote_568 a0 = GovSignalVote a0
pattern C_GovSignalProposal_570 a0 = GovSignalProposal a0
check_GovSignalVote_568 :: T_GovVote_522 -> T_GovSignal_566
check_GovSignalVote_568 = GovSignalVote
check_GovSignalProposal_570 :: T_GovProposal_540 -> T_GovSignal_566
check_GovSignalProposal_570 = GovSignalProposal
cover_GovSignal_566 :: GovSignal -> ()
cover_GovSignal_566 x
  = case x of
      GovSignalVote _ -> ()
      GovSignalProposal _ -> ()
-- Ledger.Foreign.LedgerTypes.GovState
d_GovState_572 :: ()
d_GovState_572 = erased
-- Ledger.Foreign.LedgerTypes.CertEnv
d_CertEnv_574 = ()
type T_CertEnv_574 = CertEnv
pattern C_CertEnv'46'constructor_5847 a0 a1 a2 a3 = MkCertEnv a0 a1 a2 a3
check_CertEnv'46'constructor_5847 ::
  Integer ->
  T_PParams_304 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_522 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_120)
    Integer ->
  T_CertEnv_574
check_CertEnv'46'constructor_5847 = MkCertEnv
cover_CertEnv_574 :: CertEnv -> ()
cover_CertEnv_574 x
  = case x of
      MkCertEnv _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv.epoch
d_epoch_584 :: T_CertEnv_574 -> Integer
d_epoch_584 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5847 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.pp
d_pp_586 :: T_CertEnv_574 -> T_PParams_304
d_pp_586 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5847 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.votes
d_votes_588 :: T_CertEnv_574 -> [T_GovVote_522]
d_votes_588 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5847 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.wdrls
d_wdrls_590 ::
  T_CertEnv_574 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_120)
    Integer
d_wdrls_590 v0
  = case coe v0 of
      C_CertEnv'46'constructor_5847 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState
d_DState_592 = ()
type T_DState_592 = DState
pattern C_DState'46'constructor_5933 a0 a1 a2 = MkDState a0 a1 a2
check_DState'46'constructor_5933 ::
  T_HSMap_26 T_Credential_120 T_VDeleg_138 ->
  T_HSMap_26 T_Credential_120 T_Credential_120 ->
  T_HSMap_26 T_Credential_120 Integer -> T_DState_592
check_DState'46'constructor_5933 = MkDState
cover_DState_592 :: DState -> ()
cover_DState_592 x
  = case x of
      MkDState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState.voteDelegs
d_voteDelegs_600 ::
  T_DState_592 -> T_HSMap_26 T_Credential_120 T_VDeleg_138
d_voteDelegs_600 v0
  = case coe v0 of
      C_DState'46'constructor_5933 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.stakeDelegs
d_stakeDelegs_602 ::
  T_DState_592 -> T_HSMap_26 T_Credential_120 T_Credential_120
d_stakeDelegs_602 v0
  = case coe v0 of
      C_DState'46'constructor_5933 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.rewards
d_rewards_604 ::
  T_DState_592 -> T_HSMap_26 T_Credential_120 Integer
d_rewards_604 v0
  = case coe v0 of
      C_DState'46'constructor_5933 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState
d_PState_606 = ()
type T_PState_606 = PState
pattern C_PState'46'constructor_5995 a0 a1 = MkPState a0 a1
check_PState'46'constructor_5995 ::
  T_HSMap_26 T_Credential_120 T_Credential_120 ->
  T_HSMap_26 T_Credential_120 Integer -> T_PState_606
check_PState'46'constructor_5995 = MkPState
cover_PState_606 :: PState -> ()
cover_PState_606 x
  = case x of
      MkPState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PState.pools
d_pools_612 ::
  T_PState_606 -> T_HSMap_26 T_Credential_120 T_Credential_120
d_pools_612 v0
  = case coe v0 of
      C_PState'46'constructor_5995 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState.retiring
d_retiring_614 ::
  T_PState_606 -> T_HSMap_26 T_Credential_120 Integer
d_retiring_614 v0
  = case coe v0 of
      C_PState'46'constructor_5995 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState
d_GState_616 = ()
type T_GState_616 = GState
pattern C_GState'46'constructor_6053 a0 a1 = MkGState a0 a1
check_GState'46'constructor_6053 ::
  T_HSMap_26 T_Credential_120 Integer ->
  T_HSMap_26
    T_Credential_120
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_120) ->
  T_GState_616
check_GState'46'constructor_6053 = MkGState
cover_GState_616 :: GState -> ()
cover_GState_616 x
  = case x of
      MkGState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState.dreps
d_dreps_622 :: T_GState_616 -> T_HSMap_26 T_Credential_120 Integer
d_dreps_622 v0
  = case coe v0 of
      C_GState'46'constructor_6053 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState.ccHotKeys
d_ccHotKeys_624 ::
  T_GState_616 ->
  T_HSMap_26 T_Credential_120 (Maybe T_Credential_120)
d_ccHotKeys_624 v0
  = case coe v0 of
      C_GState'46'constructor_6053 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState
d_CertState_626 = ()
type T_CertState_626 = CertState
pattern C_CertState'46'constructor_6099 a0 a1 a2 = MkCertState a0 a1 a2
check_CertState'46'constructor_6099 ::
  T_DState_592 -> T_PState_606 -> T_GState_616 -> T_CertState_626
check_CertState'46'constructor_6099 = MkCertState
cover_CertState_626 :: CertState -> ()
cover_CertState_626 x
  = case x of
      MkCertState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState.dState
d_dState_634 :: T_CertState_626 -> T_DState_592
d_dState_634 v0
  = case coe v0 of
      C_CertState'46'constructor_6099 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.pState
d_pState_636 :: T_CertState_626 -> T_PState_606
d_pState_636 v0
  = case coe v0 of
      C_CertState'46'constructor_6099 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.gState
d_gState_638 :: T_CertState_626 -> T_GState_616
d_gState_638 v0
  = case coe v0 of
      C_CertState'46'constructor_6099 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.StakeDistrs
d_StakeDistrs_640 = ()
type T_StakeDistrs_640 = StakeDistrs
pattern C_StakeDistrs'46'constructor_6155 a0 = MkStakeDistrs a0
check_StakeDistrs'46'constructor_6155 ::
  T_HSMap_26 T_VDeleg_138 Integer -> T_StakeDistrs_640
check_StakeDistrs'46'constructor_6155 = MkStakeDistrs
cover_StakeDistrs_640 :: StakeDistrs -> ()
cover_StakeDistrs_640 x
  = case x of
      MkStakeDistrs _ -> ()
-- Ledger.Foreign.LedgerTypes.StakeDistrs.stakeDistr
d_stakeDistr_644 ::
  T_StakeDistrs_640 -> T_HSMap_26 T_VDeleg_138 Integer
d_stakeDistr_644 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_6155 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv
d_RatifyEnv_646 = ()
type T_RatifyEnv_646 = RatifyEnv
pattern C_RatifyEnv'46'constructor_6235 a0 a1 a2 a3 a4 = MkRatifyEnv a0 a1 a2 a3 a4
check_RatifyEnv'46'constructor_6235 ::
  T_StakeDistrs_640 ->
  Integer ->
  T_HSMap_26 T_Credential_120 Integer ->
  T_HSMap_26
    T_Credential_120
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_120) ->
  Integer -> T_RatifyEnv_646
check_RatifyEnv'46'constructor_6235 = MkRatifyEnv
cover_RatifyEnv_646 :: RatifyEnv -> ()
cover_RatifyEnv_646 x
  = case x of
      MkRatifyEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reStakeDistrs
d_reStakeDistrs_658 :: T_RatifyEnv_646 -> T_StakeDistrs_640
d_reStakeDistrs_658 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_6235 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCurrentEpoch
d_reCurrentEpoch_660 :: T_RatifyEnv_646 -> Integer
d_reCurrentEpoch_660 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_6235 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reDReps
d_reDReps_662 ::
  T_RatifyEnv_646 -> T_HSMap_26 T_Credential_120 Integer
d_reDReps_662 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_6235 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCCHotKeys
d_reCCHotKeys_664 ::
  T_RatifyEnv_646 ->
  T_HSMap_26 T_Credential_120 (Maybe T_Credential_120)
d_reCCHotKeys_664 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_6235 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reTreasury
d_reTreasury_666 :: T_RatifyEnv_646 -> Integer
d_reTreasury_666 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_6235 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState
d_RatifyState_668 = ()
type T_RatifyState_668 = RatifyState
pattern C_RatifyState'46'constructor_6347 a0 a1 a2 = MkRatifyState a0 a1 a2
check_RatifyState'46'constructor_6347 ::
  T_EnactState_430 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_500) ->
  Bool -> T_RatifyState_668
check_RatifyState'46'constructor_6347 = MkRatifyState
cover_RatifyState_668 :: RatifyState -> ()
cover_RatifyState_668 x
  = case x of
      MkRatifyState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyState.es
d_es_676 :: T_RatifyState_668 -> T_EnactState_430
d_es_676 v0
  = case coe v0 of
      C_RatifyState'46'constructor_6347 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.removed
d_removed_678 ::
  T_RatifyState_668 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny T_TxId_52 Integer)
       T_GovActionState_500)
d_removed_678 v0
  = case coe v0 of
      C_RatifyState'46'constructor_6347 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.delay
d_delay_680 :: T_RatifyState_668 -> Bool
d_delay_680 v0
  = case coe v0 of
      C_RatifyState'46'constructor_6347 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv
d_LEnv_682 = ()
type T_LEnv_682 = LedgerEnv
pattern C_LEnv'46'constructor_6419 a0 a1 a2 a3 = MkLedgerEnv a0 a1 a2 a3
check_LEnv'46'constructor_6419 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_PParams_304 -> T_EnactState_430 -> T_LEnv_682
check_LEnv'46'constructor_6419 = MkLedgerEnv
cover_LEnv_682 :: LedgerEnv -> ()
cover_LEnv_682 x
  = case x of
      MkLedgerEnv _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.LEnv.slot
d_slot_692 :: T_LEnv_682 -> Integer
d_slot_692 v0
  = case coe v0 of
      C_LEnv'46'constructor_6419 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.ppolicy
d_ppolicy_694 :: T_LEnv_682 -> Maybe Integer
d_ppolicy_694 v0
  = case coe v0 of
      C_LEnv'46'constructor_6419 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.pparams
d_pparams_696 :: T_LEnv_682 -> T_PParams_304
d_pparams_696 v0
  = case coe v0 of
      C_LEnv'46'constructor_6419 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.enactState
d_enactState_698 :: T_LEnv_682 -> T_EnactState_430
d_enactState_698 v0
  = case coe v0 of
      C_LEnv'46'constructor_6419 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState
d_LState_700 = ()
type T_LState_700 = LedgerState
pattern C_LState'46'constructor_6493 a0 a1 a2 = MkLedgerState a0 a1 a2
check_LState'46'constructor_6493 ::
  T_UTxOState_420 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_500) ->
  T_CertState_626 -> T_LState_700
check_LState'46'constructor_6493 = MkLedgerState
cover_LState_700 :: LedgerState -> ()
cover_LState_700 x
  = case x of
      MkLedgerState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.LState.utxoSt
d_utxoSt_708 :: T_LState_700 -> T_UTxOState_420
d_utxoSt_708 v0
  = case coe v0 of
      C_LState'46'constructor_6493 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState.govSt
d_govSt_710 ::
  T_LState_700 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_TxId_52 Integer)
     T_GovActionState_500]
d_govSt_710 v0
  = case coe v0 of
      C_LState'46'constructor_6493 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState.certState
d_certState_712 :: T_LState_700 -> T_CertState_626
d_certState_712 v0
  = case coe v0 of
      C_LState'46'constructor_6493 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv
d_EnactEnv_714 = ()
type T_EnactEnv_714 = EnactEnv
pattern C_EnactEnv'46'constructor_6551 a0 a1 a2 = MkEnactEnv a0 a1 a2
check_EnactEnv'46'constructor_6551 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  Integer -> Integer -> T_EnactEnv_714
check_EnactEnv'46'constructor_6551 = MkEnactEnv
cover_EnactEnv_714 :: EnactEnv -> ()
cover_EnactEnv_714 x
  = case x of
      MkEnactEnv _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactEnv.gid
d_gid_722 ::
  T_EnactEnv_714 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gid_722 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_6551 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv.treasury
d_treasury_724 :: T_EnactEnv_714 -> Integer
d_treasury_724 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_6551 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv.epoch
d_epoch_726 :: T_EnactEnv_714 -> Integer
d_epoch_726 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_6551 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Acnt
d_Acnt_728 = ()
type T_Acnt_728 = Acnt
pattern C_Acnt'46'constructor_6605 a0 a1 = MkAcnt a0 a1
check_Acnt'46'constructor_6605 :: Integer -> Integer -> T_Acnt_728
check_Acnt'46'constructor_6605 = MkAcnt
cover_Acnt_728 :: Acnt -> ()
cover_Acnt_728 x
  = case x of
      MkAcnt _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Acnt.treasury
d_treasury_734 :: T_Acnt_728 -> Integer
d_treasury_734 v0
  = case coe v0 of
      C_Acnt'46'constructor_6605 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Acnt.reserves
d_reserves_736 :: T_Acnt_728 -> Integer
d_reserves_736 v0
  = case coe v0 of
      C_Acnt'46'constructor_6605 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochEnv
d_NewEpochEnv_738 = ()
type T_NewEpochEnv_738 = NewEpochEnv
pattern C_NewEpochEnv'46'constructor_6645 a0 = MkNewEpochEnv a0
check_NewEpochEnv'46'constructor_6645 ::
  T_StakeDistrs_640 -> T_NewEpochEnv_738
check_NewEpochEnv'46'constructor_6645 = MkNewEpochEnv
cover_NewEpochEnv_738 :: NewEpochEnv -> ()
cover_NewEpochEnv_738 x
  = case x of
      MkNewEpochEnv _ -> ()
-- Ledger.Foreign.LedgerTypes.NewEpochEnv.stakeDistrs
d_stakeDistrs_742 :: T_NewEpochEnv_738 -> T_StakeDistrs_640
d_stakeDistrs_742 v0
  = case coe v0 of
      C_NewEpochEnv'46'constructor_6645 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState
d_EpochState_744 = ()
type T_EpochState_744 = EpochState
pattern C_EpochState'46'constructor_6689 a0 a1 a2 a3 = MkEpochState a0 a1 a2 a3
check_EpochState'46'constructor_6689 ::
  T_Acnt_728 ->
  T_LState_700 ->
  T_EnactState_430 -> T_RatifyState_668 -> T_EpochState_744
check_EpochState'46'constructor_6689 = MkEpochState
cover_EpochState_744 :: EpochState -> ()
cover_EpochState_744 x
  = case x of
      MkEpochState _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EpochState.acnt
d_acnt_754 :: T_EpochState_744 -> T_Acnt_728
d_acnt_754 v0
  = case coe v0 of
      C_EpochState'46'constructor_6689 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.ls
d_ls_756 :: T_EpochState_744 -> T_LState_700
d_ls_756 v0
  = case coe v0 of
      C_EpochState'46'constructor_6689 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.es
d_es_758 :: T_EpochState_744 -> T_EnactState_430
d_es_758 v0
  = case coe v0 of
      C_EpochState'46'constructor_6689 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.fut
d_fut_760 :: T_EpochState_744 -> T_RatifyState_668
d_fut_760 v0
  = case coe v0 of
      C_EpochState'46'constructor_6689 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState
d_NewEpochState_762 = ()
type T_NewEpochState_762 = NewEpochState
pattern C_NewEpochState'46'constructor_6759 a0 a1 = MkNewEpochState a0 a1
check_NewEpochState'46'constructor_6759 ::
  Integer -> T_EpochState_744 -> T_NewEpochState_762
check_NewEpochState'46'constructor_6759 = MkNewEpochState
cover_NewEpochState_762 :: NewEpochState -> ()
cover_NewEpochState_762 x
  = case x of
      MkNewEpochState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.NewEpochState.lastEpoch
d_lastEpoch_768 :: T_NewEpochState_762 -> Integer
d_lastEpoch_768 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_6759 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState.epochState
d_epochState_770 :: T_NewEpochState_762 -> T_EpochState_744
d_epochState_770 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_6759 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.ChainState
d_ChainState_772 = ()
type T_ChainState_772 = ChainState
pattern C_ChainState'46'constructor_6799 a0 = MkChainState a0
check_ChainState'46'constructor_6799 ::
  T_NewEpochState_762 -> T_ChainState_772
check_ChainState'46'constructor_6799 = MkChainState
cover_ChainState_772 :: ChainState -> ()
cover_ChainState_772 x
  = case x of
      MkChainState _ -> ()
-- Ledger.Foreign.LedgerTypes.ChainState.csNewEpochState
d_csNewEpochState_776 :: T_ChainState_772 -> T_NewEpochState_762
d_csNewEpochState_776 v0
  = case coe v0 of
      C_ChainState'46'constructor_6799 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Block
d_Block_778 = ()
type T_Block_778 = Block
pattern C_Block'46'constructor_6835 a0 a1 = MkBlock a0 a1
check_Block'46'constructor_6835 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Tx_226 ->
  Integer -> T_Block_778
check_Block'46'constructor_6835 = MkBlock
cover_Block_778 :: Block -> ()
cover_Block_778 x
  = case x of
      MkBlock _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Block.blockTxs
d_blockTxs_784 :: T_Block_778 -> [T_Tx_226]
d_blockTxs_784 v0
  = case coe v0 of
      C_Block'46'constructor_6835 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Block.blockSlot
d_blockSlot_786 :: T_Block_778 -> Integer
d_blockSlot_786 v0
  = case coe v0 of
      C_Block'46'constructor_6835 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv
d_DelegEnv_788 = ()
type T_DelegEnv_788 = DelegEnv
pattern C_DelegEnv'46'constructor_6881 a0 a1 = MkDelegEnv a0 a1
check_DelegEnv'46'constructor_6881 ::
  T_PParams_304 ->
  T_HSMap_26 T_Credential_120 T_Credential_120 -> T_DelegEnv_788
check_DelegEnv'46'constructor_6881 = MkDelegEnv
cover_DelegEnv_788 :: DelegEnv -> ()
cover_DelegEnv_788 x
  = case x of
      MkDelegEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DelegEnv.dePParams
d_dePParams_794 :: T_DelegEnv_788 -> T_PParams_304
d_dePParams_794 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_6881 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv.dePools
d_dePools_796 ::
  T_DelegEnv_788 -> T_HSMap_26 T_Credential_120 T_Credential_120
d_dePools_796 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_6881 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
