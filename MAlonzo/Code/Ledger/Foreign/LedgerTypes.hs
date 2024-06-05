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
  { ppA                   :: Integer
  , ppB                   :: Integer
  , ppMaxBlockSize        :: Integer
  , ppMaxTxSize           :: Integer
  , ppMaxHeaderSize       :: Integer
  , ppMaxValSize          :: Integer
  , ppMinUTxOValue        :: Coin
  , ppPoolDeposit         :: Coin
  , ppKeyDeposit          :: Coin
  , ppEmax                :: Epoch
  , ppNopt                :: Integer
  , ppPv                  :: (Integer, Integer)
  , ppPoolVotingThresholds :: PoolThresholds
  , ppDrepVotingThresholds :: DrepThresholds
  , ppGovActionLifetime   :: Integer
  , ppGovActionDeposit    :: Coin
  , ppDrepDeposit         :: Coin
  , ppDrepActivity        :: Epoch
  , ppCCMinSize           :: Integer
  , ppCCMaxTermLength     :: Integer
  , ppCostmdls            :: ()
  , ppPrices              :: ()
  , ppMaxTxExUnits        :: ExUnits
  , ppMaxBlockExUnits     :: ExUnits
  , ppCoinsPerUTxOByte    :: Coin
  , ppMaxCollateralInputs :: Integer
  } deriving (Show, Generic)

data PParamsUpdate = MkPParamsUpdate
  { ppuA                    :: Maybe Integer
  , ppuB                    :: Maybe Integer
  , ppuMaxBlockSize         :: Maybe Integer
  , ppuMaxTxSize            :: Maybe Integer
  , ppuMaxHeaderSize        :: Maybe Integer
  , ppuMaxValSize           :: Maybe Integer
  , ppuMinUTxOValue         :: Maybe Coin
  , ppuPoolDeposit          :: Maybe Coin
  , ppuKeyDeposit           :: Maybe Coin
  , ppuEmax                 :: Maybe Epoch
  , ppuNopt                 :: Maybe Integer
  , ppuPv                   :: Maybe (Integer, Integer)
  , ppuPoolVotingThresholds :: Maybe PoolThresholds
  , ppuDrepVotingThresholds :: Maybe DrepThresholds
  , ppuGovActionLifetime    :: Maybe Integer
  , ppuGovActionDeposit     :: Maybe Coin
  , ppuDrepDeposit          :: Maybe Coin
  , ppuDrepActivity         :: Maybe Epoch
  , ppuCCMinSize            :: Maybe Integer
  , ppuCCMaxTermLength      :: Maybe Integer
  , ppuCostmdls             :: Maybe ()
  , ppuPrices               :: Maybe ()
  , ppuMaxTxExUnits         :: Maybe ExUnits
  , ppuMaxBlockExUnits      :: Maybe ExUnits
  , ppuCoinsPerUTxOByte     :: Maybe Coin
  , ppuMaxCollateralInputs  :: Maybe Integer
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
pattern C_TxId'46'constructor_223 a0 = MkTxId a0
check_TxId'46'constructor_223 :: Integer -> T_TxId_52
check_TxId'46'constructor_223 = MkTxId
cover_TxId_52 :: TxId -> ()
cover_TxId_52 x
  = case x of
      MkTxId _ -> ()
-- Ledger.Foreign.LedgerTypes.TxId.txid
d_txid_56 :: T_TxId_52 -> Integer
d_txid_56 v0
  = case coe v0 of
      C_TxId'46'constructor_223 v1 -> coe v1
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
-- Ledger.Foreign.LedgerTypes.Anchor
d_Anchor_70 :: ()
d_Anchor_70 = erased
-- Ledger.Foreign.LedgerTypes.AuxiliaryData
d_AuxiliaryData_72 :: ()
d_AuxiliaryData_72 = erased
-- Ledger.Foreign.LedgerTypes.Datum
d_Datum_74 :: ()
d_Datum_74 = erased
-- Ledger.Foreign.LedgerTypes.Redeemer
d_Redeemer_76 :: ()
d_Redeemer_76 = erased
-- Ledger.Foreign.LedgerTypes.Network
d_Network_78 :: ()
d_Network_78 = erased
-- Ledger.Foreign.LedgerTypes.Script
d_Script_80 :: ()
d_Script_80 = erased
-- Ledger.Foreign.LedgerTypes.DataHash
d_DataHash_82 :: ()
d_DataHash_82 = erased
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
pattern C_TxBody'46'constructor_947 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
check_TxBody'46'constructor_947 ::
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
check_TxBody'46'constructor_947 = MkTxBody
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
      C_TxBody'46'constructor_947 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.refInputs
d_refInputs_186 ::
  T_TxBody_160 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_refInputs_186 v0
  = case coe v0 of
      C_TxBody'46'constructor_947 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
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
      C_TxBody'46'constructor_947 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_190 :: T_TxBody_160 -> Integer
d_txfee_190 v0
  = case coe v0 of
      C_TxBody'46'constructor_947 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_192 ::
  T_TxBody_160 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_192 v0
  = case coe v0 of
      C_TxBody'46'constructor_947 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_194 :: T_TxBody_160 -> Integer
d_txsize_194 v0
  = case coe v0 of
      C_TxBody'46'constructor_947 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_196 :: T_TxBody_160 -> T_TxId_52
d_txid_196 v0
  = case coe v0 of
      C_TxBody'46'constructor_947 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_198 ::
  T_TxBody_160 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny T_TxId_52 Integer]
d_collateral_198 v0
  = case coe v0 of
      C_TxBody'46'constructor_947 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_200 :: T_TxBody_160 -> [Integer]
d_reqSigHash_200 v0
  = case coe v0 of
      C_TxBody'46'constructor_947 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_202 :: T_TxBody_160 -> Maybe Integer
d_scriptIntHash_202 v0
  = case coe v0 of
      C_TxBody'46'constructor_947 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txcerts
d_txcerts_204 :: T_TxBody_160 -> [T_TxCert_144]
d_txcerts_204 v0
  = case coe v0 of
      C_TxBody'46'constructor_947 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_206 = ()
type T_TxWitnesses_206 = TxWitnesses
pattern C_TxWitnesses'46'constructor_1291 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_1291 ::
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
check_TxWitnesses'46'constructor_1291 = MkTxWitnesses
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
      C_TxWitnesses'46'constructor_1291 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_218 :: T_TxWitnesses_206 -> [T_Empty_6]
d_scripts_218 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1291 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_220 ::
  T_TxWitnesses_206 ->
  T_HSMap_26
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txdats_220 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1291 v1 v2 v3 v4 -> coe v3
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
      C_TxWitnesses'46'constructor_1291 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_224 = ()
type T_Tx_224 = Tx
pattern C_Tx'46'constructor_1357 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_1357 ::
  T_TxBody_160 ->
  T_TxWitnesses_206 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_224
check_Tx'46'constructor_1357 = MkTx
cover_Tx_224 :: Tx -> ()
cover_Tx_224 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_232 :: T_Tx_224 -> T_TxBody_160
d_body_232 v0
  = case coe v0 of
      C_Tx'46'constructor_1357 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_234 :: T_Tx_224 -> T_TxWitnesses_206
d_wits_234 v0
  = case coe v0 of
      C_Tx'46'constructor_1357 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_236 ::
  T_Tx_224 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_236 v0
  = case coe v0 of
      C_Tx'46'constructor_1357 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds
d_DrepThresholds_238 = ()
type T_DrepThresholds_238 = DrepThresholds
pattern C_DrepThresholds'46'constructor_1477 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = MkDrepThresholds a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
check_DrepThresholds'46'constructor_1477 ::
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
  T_DrepThresholds_238
check_DrepThresholds'46'constructor_1477 = MkDrepThresholds
cover_DrepThresholds_238 :: DrepThresholds -> ()
cover_DrepThresholds_238 x
  = case x of
      MkDrepThresholds _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P1
d_P1_260 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P1_260 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1477 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P2a
d_P2a_262 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P2a_262 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1477 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P2b
d_P2b_264 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P2b_264 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1477 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P3
d_P3_266 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P3_266 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1477 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P4
d_P4_268 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P4_268 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1477 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5a
d_P5a_270 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5a_270 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1477 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5b
d_P5b_272 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5b_272 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1477 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5c
d_P5c_274 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5c_274 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1477 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P5d
d_P5d_276 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P5d_276 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1477 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DrepThresholds.P6
d_P6_278 ::
  T_DrepThresholds_238 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_P6_278 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1477 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds
d_PoolThresholds_280 = ()
type T_PoolThresholds_280 = PoolThresholds
pattern C_PoolThresholds'46'constructor_1723 a0 a1 a2 a3 a4 = MkPoolThresholds a0 a1 a2 a3 a4
check_PoolThresholds'46'constructor_1723 ::
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
  T_PoolThresholds_280
check_PoolThresholds'46'constructor_1723 = MkPoolThresholds
cover_PoolThresholds_280 :: PoolThresholds -> ()
cover_PoolThresholds_280 x
  = case x of
      MkPoolThresholds _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q1
d_Q1_292 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q1_292 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1723 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q2a
d_Q2a_294 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q2a_294 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1723 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q2b
d_Q2b_296 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q2b_296 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1723 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q4
d_Q4_298 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q4_298 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1723 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PoolThresholds.Q5e
d_Q5e_300 ::
  T_PoolThresholds_280 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_Q5e_300 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1723 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_302 = ()
type T_PParams_302 = PParams
pattern C_PParams'46'constructor_2575 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25
check_PParams'46'constructor_2575 ::
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
  T_PoolThresholds_280 ->
  T_DrepThresholds_238 ->
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
  Integer -> Integer -> T_PParams_302
check_PParams'46'constructor_2575 = MkPParams
cover_PParams_302 :: PParams -> ()
cover_PParams_302 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_356 :: T_PParams_302 -> Integer
d_a_356 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_358 :: T_PParams_302 -> Integer
d_b_358 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_360 :: T_PParams_302 -> Integer
d_maxBlockSize_360 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_362 :: T_PParams_302 -> Integer
d_maxTxSize_362 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_364 :: T_PParams_302 -> Integer
d_maxHeaderSize_364 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_366 :: T_PParams_302 -> Integer
d_maxValSize_366 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_368 :: T_PParams_302 -> Integer
d_minUTxOValue_368 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_370 :: T_PParams_302 -> Integer
d_poolDeposit_370 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.keyDeposit
d_keyDeposit_372 :: T_PParams_302 -> Integer
d_keyDeposit_372 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_374 :: T_PParams_302 -> Integer
d_Emax_374 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.nopt
d_nopt_376 :: T_PParams_302 -> Integer
d_nopt_376 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_378 ::
  T_PParams_302 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_378 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolVotingThresholds
d_poolVotingThresholds_380 :: T_PParams_302 -> T_PoolThresholds_280
d_poolVotingThresholds_380 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepVotingThresholds
d_drepVotingThresholds_382 :: T_PParams_302 -> T_DrepThresholds_238
d_drepVotingThresholds_382 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_384 :: T_PParams_302 -> Integer
d_govActionLifetime_384 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_386 :: T_PParams_302 -> Integer
d_govActionDeposit_386 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_388 :: T_PParams_302 -> Integer
d_drepDeposit_388 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_390 :: T_PParams_302 -> Integer
d_drepActivity_390 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_392 :: T_PParams_302 -> Integer
d_ccMinSize_392 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_394 :: T_PParams_302 -> Integer
d_ccMaxTermLength_394 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_396 ::
  T_PParams_302 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_396 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_398 ::
  T_PParams_302 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_398 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_400 ::
  T_PParams_302 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_400 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_402 ::
  T_PParams_302 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_402 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_404 :: T_PParams_302 -> Integer
d_coinsPerUTxOByte_404 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_406 :: T_PParams_302 -> Integer
d_maxCollateralInputs_406 v0
  = case coe v0 of
      C_PParams'46'constructor_2575 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate
d_PParamsUpdate_408 = ()
type T_PParamsUpdate_408 = PParamsUpdate
pattern C_PParamsUpdate'46'constructor_6773 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25 = MkPParamsUpdate a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24 a25
check_PParamsUpdate'46'constructor_6773 ::
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () T_PoolThresholds_280 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () T_DrepThresholds_238 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_PParamsUpdate_408
check_PParamsUpdate'46'constructor_6773 = MkPParamsUpdate
cover_PParamsUpdate_408 :: PParamsUpdate -> ()
cover_PParamsUpdate_408 x
  = case x of
      MkPParamsUpdate _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        -> ()
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.a
d_a_462 :: T_PParamsUpdate_408 -> Maybe Integer
d_a_462 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.b
d_b_464 :: T_PParamsUpdate_408 -> Maybe Integer
d_b_464 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxBlockSize
d_maxBlockSize_466 :: T_PParamsUpdate_408 -> Maybe Integer
d_maxBlockSize_466 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxTxSize
d_maxTxSize_468 :: T_PParamsUpdate_408 -> Maybe Integer
d_maxTxSize_468 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_470 :: T_PParamsUpdate_408 -> Maybe Integer
d_maxHeaderSize_470 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxValSize
d_maxValSize_472 :: T_PParamsUpdate_408 -> Maybe Integer
d_maxValSize_472 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.minUTxOValue
d_minUTxOValue_474 :: T_PParamsUpdate_408 -> Maybe Integer
d_minUTxOValue_474 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.poolDeposit
d_poolDeposit_476 :: T_PParamsUpdate_408 -> Maybe Integer
d_poolDeposit_476 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.keyDeposit
d_keyDeposit_478 :: T_PParamsUpdate_408 -> Maybe Integer
d_keyDeposit_478 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.Emax
d_Emax_480 :: T_PParamsUpdate_408 -> Maybe Integer
d_Emax_480 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.nopt
d_nopt_482 :: T_PParamsUpdate_408 -> Maybe Integer
d_nopt_482 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.pv
d_pv_484 ::
  T_PParamsUpdate_408 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_pv_484 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.poolVotingThresholds
d_poolVotingThresholds_486 ::
  T_PParamsUpdate_408 -> Maybe T_PoolThresholds_280
d_poolVotingThresholds_486 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.drepVotingThresholds
d_drepVotingThresholds_488 ::
  T_PParamsUpdate_408 -> Maybe T_DrepThresholds_238
d_drepVotingThresholds_488 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.govActionLifetime
d_govActionLifetime_490 :: T_PParamsUpdate_408 -> Maybe Integer
d_govActionLifetime_490 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.govActionDeposit
d_govActionDeposit_492 :: T_PParamsUpdate_408 -> Maybe Integer
d_govActionDeposit_492 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.drepDeposit
d_drepDeposit_494 :: T_PParamsUpdate_408 -> Maybe Integer
d_drepDeposit_494 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.drepActivity
d_drepActivity_496 :: T_PParamsUpdate_408 -> Maybe Integer
d_drepActivity_496 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.ccMinSize
d_ccMinSize_498 :: T_PParamsUpdate_408 -> Maybe Integer
d_ccMinSize_498 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_500 :: T_PParamsUpdate_408 -> Maybe Integer
d_ccMaxTermLength_500 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.costmdls
d_costmdls_502 ::
  T_PParamsUpdate_408 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_502 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.prices
d_prices_504 ::
  T_PParamsUpdate_408 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_504 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_506 ::
  T_PParamsUpdate_408 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_maxTxExUnits_506 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_508 ::
  T_PParamsUpdate_408 ->
  Maybe
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_maxBlockExUnits_508 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_510 :: T_PParamsUpdate_408 -> Maybe Integer
d_coinsPerUTxOByte_510 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_512 :: T_PParamsUpdate_408 -> Maybe Integer
d_maxCollateralInputs_512 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_6773 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_514 = ()
type T_UTxOEnv_514 = UTxOEnv
pattern C_UTxOEnv'46'constructor_8185 a0 a1 = MkUTxOEnv a0 a1
check_UTxOEnv'46'constructor_8185 ::
  Integer -> T_PParams_302 -> T_UTxOEnv_514
check_UTxOEnv'46'constructor_8185 = MkUTxOEnv
cover_UTxOEnv_514 :: UTxOEnv -> ()
cover_UTxOEnv_514 x
  = case x of
      MkUTxOEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_520 :: T_UTxOEnv_514 -> Integer
d_slot_520 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8185 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_522 :: T_UTxOEnv_514 -> T_PParams_302
d_pparams_522 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_8185 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_524 = ()
type T_UTxOState_524 = UTxOState
pattern C_UTxOState'46'constructor_8205 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_8205 ::
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
  Integer -> T_UTxOState_524
check_UTxOState'46'constructor_8205 = MkUTxOState
cover_UTxOState_524 :: UTxOState -> ()
cover_UTxOState_524 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_530 ::
  T_UTxOState_524 ->
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
d_utxo_530 v0
  = case coe v0 of
      C_UTxOState'46'constructor_8205 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_532 :: T_UTxOState_524 -> Integer
d_fees_532 v0
  = case coe v0 of
      C_UTxOState'46'constructor_8205 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState
d_EnactState_534 = ()
type T_EnactState_534 = EnactState
pattern C_EnactState'46'constructor_8289 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_EnactState'46'constructor_8289 ::
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
    () () T_PParams_302
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_TxId_52 Integer) ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_EnactState_534
check_EnactState'46'constructor_8289 = MkEnactState
cover_EnactState_534 :: EnactState -> ()
cover_EnactState_534 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactState.esCC
d_esCC_546 ::
  T_EnactState_534 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (Maybe
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny (T_HSMap_26 T_Credential_118 Integer)
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esCC_546 v0
  = case coe v0 of
      C_EnactState'46'constructor_8289 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esConstitution
d_esConstitution_548 ::
  T_EnactState_534 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (Maybe Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esConstitution_548 v0
  = case coe v0 of
      C_EnactState'46'constructor_8289 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPV
d_esPV_550 ::
  T_EnactState_534 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPV_550 v0
  = case coe v0 of
      C_EnactState'46'constructor_8289 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPParams
d_esPParams_552 ::
  T_EnactState_534 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_PParams_302
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_TxId_52 Integer)
d_esPParams_552 v0
  = case coe v0 of
      C_EnactState'46'constructor_8289 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esWithdrawals
d_esWithdrawals_554 ::
  T_EnactState_534 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_esWithdrawals_554 v0
  = case coe v0 of
      C_EnactState'46'constructor_8289 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv
d_GovEnv_556 = ()
type T_GovEnv_556 = GovEnv
pattern C_GovEnv'46'constructor_8395 a0 a1 a2 a3 a4 = MkGovEnv a0 a1 a2 a3 a4
check_GovEnv'46'constructor_8395 ::
  T_TxId_52 ->
  Integer ->
  T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_EnactState_534 -> T_GovEnv_556
check_GovEnv'46'constructor_8395 = MkGovEnv
cover_GovEnv_556 :: GovEnv -> ()
cover_GovEnv_556 x
  = case x of
      MkGovEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovEnv.geTxId
d_geTxId_568 :: T_GovEnv_556 -> T_TxId_52
d_geTxId_568 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8395 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEpoch
d_geEpoch_570 :: T_GovEnv_556 -> Integer
d_geEpoch_570 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8395 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePParams
d_gePParams_572 :: T_GovEnv_556 -> T_PParams_302
d_gePParams_572 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8395 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePPolicy
d_gePPolicy_574 :: T_GovEnv_556 -> Maybe Integer
d_gePPolicy_574 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8395 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEnactState
d_geEnactState_576 :: T_GovEnv_556 -> T_EnactState_534
d_geEnactState_576 v0
  = case coe v0 of
      C_GovEnv'46'constructor_8395 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Voter
d_Voter_578 :: ()
d_Voter_578 = erased
-- Ledger.Foreign.LedgerTypes.GovAction
d_GovAction_580 = ()
type T_GovAction_580 = GovAction
pattern C_NoConfidence_582 = NoConfidence
pattern C_NewCommittee_584 a0 a1 a2 = NewCommittee a0 a1 a2
pattern C_NewConstitution_586 a0 a1 = NewConstitution a0 a1
pattern C_TriggerHF_588 a0 = TriggerHF a0
pattern C_ChangePParams_590 a0 = ChangePParams a0
pattern C_TreasuryWdrl_592 a0 = TreasuryWdrl a0
pattern C_Info_594 = Info
check_NoConfidence_582 :: T_GovAction_580
check_NoConfidence_582 = NoConfidence
check_NewCommittee_584 ::
  T_HSMap_26 T_Credential_118 Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Credential_118 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_580
check_NewCommittee_584 = NewCommittee
check_NewConstitution_586 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_GovAction_580
check_NewConstitution_586 = NewConstitution
check_TriggerHF_588 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_580
check_TriggerHF_588 = TriggerHF
check_ChangePParams_590 :: T_PParamsUpdate_408 -> T_GovAction_580
check_ChangePParams_590 = ChangePParams
check_TreasuryWdrl_592 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_GovAction_580
check_TreasuryWdrl_592 = TreasuryWdrl
check_Info_594 :: T_GovAction_580
check_Info_594 = Info
cover_GovAction_580 :: GovAction -> ()
cover_GovAction_580 x
  = case x of
      NoConfidence -> ()
      NewCommittee _ _ _ -> ()
      NewConstitution _ _ -> ()
      TriggerHF _ -> ()
      ChangePParams _ -> ()
      TreasuryWdrl _ -> ()
      Info -> ()
-- Ledger.Foreign.LedgerTypes.Vote
d_Vote_596 = ()
type T_Vote_596 = Vote
pattern C_VoteYes_598 = VoteYes
pattern C_VoteNo_600 = VoteNo
pattern C_VoteAbstain_602 = VoteAbstain
check_VoteYes_598 :: T_Vote_596
check_VoteYes_598 = VoteYes
check_VoteNo_600 :: T_Vote_596
check_VoteNo_600 = VoteNo
check_VoteAbstain_602 :: T_Vote_596
check_VoteAbstain_602 = VoteAbstain
cover_Vote_596 :: Vote -> ()
cover_Vote_596 x
  = case x of
      VoteYes -> ()
      VoteNo -> ()
      VoteAbstain -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState
d_GovActionState_604 = ()
type T_GovActionState_604 = GovActionState
pattern C_GovActionState'46'constructor_8565 a0 a1 a2 a3 a4 = MkGovActionState a0 a1 a2 a3 a4
check_GovActionState'46'constructor_8565 ::
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_GovRole_128 T_Credential_118)
    T_Vote_596 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118 ->
  Integer ->
  T_GovAction_580 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  T_GovActionState_604
check_GovActionState'46'constructor_8565 = MkGovActionState
cover_GovActionState_604 :: GovActionState -> ()
cover_GovActionState_604 x
  = case x of
      MkGovActionState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState.gasVotes
d_gasVotes_616 ::
  T_GovActionState_604 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_GovRole_128 T_Credential_118)
    T_Vote_596
d_gasVotes_616 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8565 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasReturnAddr
d_gasReturnAddr_618 ::
  T_GovActionState_604 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_118
d_gasReturnAddr_618 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8565 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasExpiresIn
d_gasExpiresIn_620 :: T_GovActionState_604 -> Integer
d_gasExpiresIn_620 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8565 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasAction
d_gasAction_622 :: T_GovActionState_604 -> T_GovAction_580
d_gasAction_622 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8565 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasPrevAction
d_gasPrevAction_624 ::
  T_GovActionState_604 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gasPrevAction_624 v0
  = case coe v0 of
      C_GovActionState'46'constructor_8565 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote
d_GovVote_626 = ()
type T_GovVote_626 = GovVote
pattern C_GovVote'46'constructor_8663 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_GovVote'46'constructor_8663 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_128 T_Credential_118 ->
  T_Vote_596 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_GovVote_626
check_GovVote'46'constructor_8663 = MkGovVote
cover_GovVote_626 :: GovVote -> ()
cover_GovVote_626 x
  = case x of
      MkGovVote _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovVote.gvGid
d_gvGid_636 ::
  T_GovVote_626 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gvGid_636 v0
  = case coe v0 of
      C_GovVote'46'constructor_8663 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVoter
d_gvVoter_638 ::
  T_GovVote_626 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_GovRole_128 T_Credential_118
d_gvVoter_638 v0
  = case coe v0 of
      C_GovVote'46'constructor_8663 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVote
d_gvVote_640 :: T_GovVote_626 -> T_Vote_596
d_gvVote_640 v0
  = case coe v0 of
      C_GovVote'46'constructor_8663 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvAnchor
d_gvAnchor_642 ::
  T_GovVote_626 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gvAnchor_642 v0
  = case coe v0 of
      C_GovVote'46'constructor_8663 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal
d_GovProposal_644 = ()
type T_GovProposal_644 = GovProposal
pattern C_GovProposal'46'constructor_8753 a0 a1 a2 a3 a4 a5 = MkGovProposal a0 a1 a2 a3 a4 a5
check_GovProposal'46'constructor_8753 ::
  T_GovAction_580 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_GovProposal_644
check_GovProposal'46'constructor_8753 = MkGovProposal
cover_GovProposal_644 :: GovProposal -> ()
cover_GovProposal_644 x
  = case x of
      MkGovProposal _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAction
d_gpAction_658 :: T_GovProposal_644 -> T_GovAction_580
d_gpAction_658 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8753 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPrevAction
d_gpPrevAction_660 ::
  T_GovProposal_644 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gpPrevAction_660 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8753 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPolicy
d_gpPolicy_662 :: T_GovProposal_644 -> Maybe Integer
d_gpPolicy_662 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8753 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpDeposit
d_gpDeposit_664 :: T_GovProposal_644 -> Integer
d_gpDeposit_664 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8753 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpReturnAddr
d_gpReturnAddr_666 ::
  T_GovProposal_644 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_118
d_gpReturnAddr_666 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8753 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAnchor
d_gpAnchor_668 ::
  T_GovProposal_644 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gpAnchor_668 v0
  = case coe v0 of
      C_GovProposal'46'constructor_8753 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovSignal
d_GovSignal_670 = ()
type T_GovSignal_670 = GovSignal
pattern C_GovSignalVote_672 a0 = GovSignalVote a0
pattern C_GovSignalProposal_674 a0 = GovSignalProposal a0
check_GovSignalVote_672 :: T_GovVote_626 -> T_GovSignal_670
check_GovSignalVote_672 = GovSignalVote
check_GovSignalProposal_674 :: T_GovProposal_644 -> T_GovSignal_670
check_GovSignalProposal_674 = GovSignalProposal
cover_GovSignal_670 :: GovSignal -> ()
cover_GovSignal_670 x
  = case x of
      GovSignalVote _ -> ()
      GovSignalProposal _ -> ()
-- Ledger.Foreign.LedgerTypes.GovState
d_GovState_676 :: ()
d_GovState_676 = erased
-- Ledger.Foreign.LedgerTypes.CertEnv
d_CertEnv_678 = ()
type T_CertEnv_678 = CertEnv
pattern C_CertEnv'46'constructor_8895 a0 a1 a2 a3 = MkCertEnv a0 a1 a2 a3
check_CertEnv'46'constructor_8895 ::
  Integer ->
  T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_GovVote_626 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_118)
    Integer ->
  T_CertEnv_678
check_CertEnv'46'constructor_8895 = MkCertEnv
cover_CertEnv_678 :: CertEnv -> ()
cover_CertEnv_678 x
  = case x of
      MkCertEnv _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertEnv.epoch
d_epoch_688 :: T_CertEnv_678 -> Integer
d_epoch_688 v0
  = case coe v0 of
      C_CertEnv'46'constructor_8895 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.pp
d_pp_690 :: T_CertEnv_678 -> T_PParams_302
d_pp_690 v0
  = case coe v0 of
      C_CertEnv'46'constructor_8895 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.votes
d_votes_692 :: T_CertEnv_678 -> [T_GovVote_626]
d_votes_692 v0
  = case coe v0 of
      C_CertEnv'46'constructor_8895 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertEnv.wdrls
d_wdrls_694 ::
  T_CertEnv_678 ->
  T_HSMap_26
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       T_Credential_118)
    Integer
d_wdrls_694 v0
  = case coe v0 of
      C_CertEnv'46'constructor_8895 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState
d_DState_696 = ()
type T_DState_696 = DState
pattern C_DState'46'constructor_8959 a0 a1 a2 = MkDState a0 a1 a2
check_DState'46'constructor_8959 ::
  T_HSMap_26 T_Credential_118 T_VDeleg_136 ->
  T_HSMap_26 T_Credential_118 T_Credential_118 ->
  T_HSMap_26 T_Credential_118 Integer -> T_DState_696
check_DState'46'constructor_8959 = MkDState
cover_DState_696 :: DState -> ()
cover_DState_696 x
  = case x of
      MkDState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DState.voteDelegs
d_voteDelegs_704 ::
  T_DState_696 -> T_HSMap_26 T_Credential_118 T_VDeleg_136
d_voteDelegs_704 v0
  = case coe v0 of
      C_DState'46'constructor_8959 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.stakeDelegs
d_stakeDelegs_706 ::
  T_DState_696 -> T_HSMap_26 T_Credential_118 T_Credential_118
d_stakeDelegs_706 v0
  = case coe v0 of
      C_DState'46'constructor_8959 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DState.rewards
d_rewards_708 ::
  T_DState_696 -> T_HSMap_26 T_Credential_118 Integer
d_rewards_708 v0
  = case coe v0 of
      C_DState'46'constructor_8959 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState
d_PState_710 = ()
type T_PState_710 = PState
pattern C_PState'46'constructor_8999 a0 a1 = MkPState a0 a1
check_PState'46'constructor_8999 ::
  T_HSMap_26 T_Credential_118 T_Credential_118 ->
  T_HSMap_26 T_Credential_118 Integer -> T_PState_710
check_PState'46'constructor_8999 = MkPState
cover_PState_710 :: PState -> ()
cover_PState_710 x
  = case x of
      MkPState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PState.pools
d_pools_716 ::
  T_PState_710 -> T_HSMap_26 T_Credential_118 T_Credential_118
d_pools_716 v0
  = case coe v0 of
      C_PState'46'constructor_8999 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PState.retiring
d_retiring_718 ::
  T_PState_710 -> T_HSMap_26 T_Credential_118 Integer
d_retiring_718 v0
  = case coe v0 of
      C_PState'46'constructor_8999 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState
d_GState_720 = ()
type T_GState_720 = GState
pattern C_GState'46'constructor_9035 a0 a1 = MkGState a0 a1
check_GState'46'constructor_9035 ::
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  T_GState_720
check_GState'46'constructor_9035 = MkGState
cover_GState_720 :: GState -> ()
cover_GState_720 x
  = case x of
      MkGState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GState.dreps
d_dreps_726 :: T_GState_720 -> T_HSMap_26 T_Credential_118 Integer
d_dreps_726 v0
  = case coe v0 of
      C_GState'46'constructor_9035 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GState.ccHotKeys
d_ccHotKeys_728 ::
  T_GState_720 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_ccHotKeys_728 v0
  = case coe v0 of
      C_GState'46'constructor_9035 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState
d_CertState_730 = ()
type T_CertState_730 = CertState
pattern C_CertState'46'constructor_9059 a0 a1 a2 = MkCertState a0 a1 a2
check_CertState'46'constructor_9059 ::
  T_DState_696 -> T_PState_710 -> T_GState_720 -> T_CertState_730
check_CertState'46'constructor_9059 = MkCertState
cover_CertState_730 :: CertState -> ()
cover_CertState_730 x
  = case x of
      MkCertState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.CertState.dState
d_dState_738 :: T_CertState_730 -> T_DState_696
d_dState_738 v0
  = case coe v0 of
      C_CertState'46'constructor_9059 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.pState
d_pState_740 :: T_CertState_730 -> T_PState_710
d_pState_740 v0
  = case coe v0 of
      C_CertState'46'constructor_9059 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.CertState.gState
d_gState_742 :: T_CertState_730 -> T_GState_720
d_gState_742 v0
  = case coe v0 of
      C_CertState'46'constructor_9059 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.StakeDistrs
d_StakeDistrs_744 = ()
type T_StakeDistrs_744 = StakeDistrs
pattern C_StakeDistrs'46'constructor_9093 a0 = MkStakeDistrs a0
check_StakeDistrs'46'constructor_9093 ::
  T_HSMap_26 T_VDeleg_136 Integer -> T_StakeDistrs_744
check_StakeDistrs'46'constructor_9093 = MkStakeDistrs
cover_StakeDistrs_744 :: StakeDistrs -> ()
cover_StakeDistrs_744 x
  = case x of
      MkStakeDistrs _ -> ()
-- Ledger.Foreign.LedgerTypes.StakeDistrs.stakeDistr
d_stakeDistr_748 ::
  T_StakeDistrs_744 -> T_HSMap_26 T_VDeleg_136 Integer
d_stakeDistr_748 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_9093 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv
d_RatifyEnv_750 = ()
type T_RatifyEnv_750 = RatifyEnv
pattern C_RatifyEnv'46'constructor_9151 a0 a1 a2 a3 a4 = MkRatifyEnv a0 a1 a2 a3 a4
check_RatifyEnv'46'constructor_9151 ::
  T_StakeDistrs_744 ->
  Integer ->
  T_HSMap_26 T_Credential_118 Integer ->
  T_HSMap_26
    T_Credential_118
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_118) ->
  Integer -> T_RatifyEnv_750
check_RatifyEnv'46'constructor_9151 = MkRatifyEnv
cover_RatifyEnv_750 :: RatifyEnv -> ()
cover_RatifyEnv_750 x
  = case x of
      MkRatifyEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reStakeDistrs
d_reStakeDistrs_762 :: T_RatifyEnv_750 -> T_StakeDistrs_744
d_reStakeDistrs_762 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9151 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCurrentEpoch
d_reCurrentEpoch_764 :: T_RatifyEnv_750 -> Integer
d_reCurrentEpoch_764 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9151 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reDReps
d_reDReps_766 ::
  T_RatifyEnv_750 -> T_HSMap_26 T_Credential_118 Integer
d_reDReps_766 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9151 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reCCHotKeys
d_reCCHotKeys_768 ::
  T_RatifyEnv_750 ->
  T_HSMap_26 T_Credential_118 (Maybe T_Credential_118)
d_reCCHotKeys_768 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9151 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyEnv.reTreasury
d_reTreasury_770 :: T_RatifyEnv_750 -> Integer
d_reTreasury_770 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_9151 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState
d_RatifyState_772 = ()
type T_RatifyState_772 = RatifyState
pattern C_RatifyState'46'constructor_9241 a0 a1 a2 = MkRatifyState a0 a1 a2
check_RatifyState'46'constructor_9241 ::
  T_EnactState_534 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_604) ->
  Bool -> T_RatifyState_772
check_RatifyState'46'constructor_9241 = MkRatifyState
cover_RatifyState_772 :: RatifyState -> ()
cover_RatifyState_772 x
  = case x of
      MkRatifyState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.RatifyState.es
d_es_780 :: T_RatifyState_772 -> T_EnactState_534
d_es_780 v0
  = case coe v0 of
      C_RatifyState'46'constructor_9241 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.removed
d_removed_782 ::
  T_RatifyState_772 ->
  T_HSSet_40
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny T_TxId_52 Integer)
       T_GovActionState_604)
d_removed_782 v0
  = case coe v0 of
      C_RatifyState'46'constructor_9241 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.RatifyState.delay
d_delay_784 :: T_RatifyState_772 -> Bool
d_delay_784 v0
  = case coe v0 of
      C_RatifyState'46'constructor_9241 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv
d_LEnv_786 = ()
type T_LEnv_786 = LedgerEnv
pattern C_LEnv'46'constructor_9291 a0 a1 a2 a3 = MkLedgerEnv a0 a1 a2 a3
check_LEnv'46'constructor_9291 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_PParams_302 -> T_EnactState_534 -> T_LEnv_786
check_LEnv'46'constructor_9291 = MkLedgerEnv
cover_LEnv_786 :: LedgerEnv -> ()
cover_LEnv_786 x
  = case x of
      MkLedgerEnv _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.LEnv.slot
d_slot_796 :: T_LEnv_786 -> Integer
d_slot_796 v0
  = case coe v0 of
      C_LEnv'46'constructor_9291 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.ppolicy
d_ppolicy_798 :: T_LEnv_786 -> Maybe Integer
d_ppolicy_798 v0
  = case coe v0 of
      C_LEnv'46'constructor_9291 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.pparams
d_pparams_800 :: T_LEnv_786 -> T_PParams_302
d_pparams_800 v0
  = case coe v0 of
      C_LEnv'46'constructor_9291 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LEnv.enactState
d_enactState_802 :: T_LEnv_786 -> T_EnactState_534
d_enactState_802 v0
  = case coe v0 of
      C_LEnv'46'constructor_9291 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState
d_LState_804 = ()
type T_LState_804 = LedgerState
pattern C_LState'46'constructor_9343 a0 a1 a2 = MkLedgerState a0 a1 a2
check_LState'46'constructor_9343 ::
  T_UTxOState_524 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_TxId_52 Integer)
       T_GovActionState_604) ->
  T_CertState_730 -> T_LState_804
check_LState'46'constructor_9343 = MkLedgerState
cover_LState_804 :: LedgerState -> ()
cover_LState_804 x
  = case x of
      MkLedgerState _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.LState.utxoSt
d_utxoSt_812 :: T_LState_804 -> T_UTxOState_524
d_utxoSt_812 v0
  = case coe v0 of
      C_LState'46'constructor_9343 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState.govSt
d_govSt_814 ::
  T_LState_804 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_TxId_52 Integer)
     T_GovActionState_604]
d_govSt_814 v0
  = case coe v0 of
      C_LState'46'constructor_9343 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.LState.certState
d_certState_816 :: T_LState_804 -> T_CertState_730
d_certState_816 v0
  = case coe v0 of
      C_LState'46'constructor_9343 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv
d_EnactEnv_818 = ()
type T_EnactEnv_818 = EnactEnv
pattern C_EnactEnv'46'constructor_9379 a0 a1 a2 = MkEnactEnv a0 a1 a2
check_EnactEnv'46'constructor_9379 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_TxId_52 Integer ->
  Integer -> Integer -> T_EnactEnv_818
check_EnactEnv'46'constructor_9379 = MkEnactEnv
cover_EnactEnv_818 :: EnactEnv -> ()
cover_EnactEnv_818 x
  = case x of
      MkEnactEnv _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactEnv.gid
d_gid_826 ::
  T_EnactEnv_818 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_TxId_52 Integer
d_gid_826 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_9379 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv.treasury
d_treasury_828 :: T_EnactEnv_818 -> Integer
d_treasury_828 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_9379 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactEnv.epoch
d_epoch_830 :: T_EnactEnv_818 -> Integer
d_epoch_830 v0
  = case coe v0 of
      C_EnactEnv'46'constructor_9379 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Acnt
d_Acnt_832 = ()
type T_Acnt_832 = Acnt
pattern C_Acnt'46'constructor_9411 a0 a1 = MkAcnt a0 a1
check_Acnt'46'constructor_9411 :: Integer -> Integer -> T_Acnt_832
check_Acnt'46'constructor_9411 = MkAcnt
cover_Acnt_832 :: Acnt -> ()
cover_Acnt_832 x
  = case x of
      MkAcnt _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Acnt.treasury
d_treasury_838 :: T_Acnt_832 -> Integer
d_treasury_838 v0
  = case coe v0 of
      C_Acnt'46'constructor_9411 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Acnt.reserves
d_reserves_840 :: T_Acnt_832 -> Integer
d_reserves_840 v0
  = case coe v0 of
      C_Acnt'46'constructor_9411 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochEnv
d_NewEpochEnv_842 = ()
type T_NewEpochEnv_842 = NewEpochEnv
pattern C_NewEpochEnv'46'constructor_9429 a0 = MkNewEpochEnv a0
check_NewEpochEnv'46'constructor_9429 ::
  T_StakeDistrs_744 -> T_NewEpochEnv_842
check_NewEpochEnv'46'constructor_9429 = MkNewEpochEnv
cover_NewEpochEnv_842 :: NewEpochEnv -> ()
cover_NewEpochEnv_842 x
  = case x of
      MkNewEpochEnv _ -> ()
-- Ledger.Foreign.LedgerTypes.NewEpochEnv.stakeDistrs
d_stakeDistrs_846 :: T_NewEpochEnv_842 -> T_StakeDistrs_744
d_stakeDistrs_846 v0
  = case coe v0 of
      C_NewEpochEnv'46'constructor_9429 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState
d_EpochState_848 = ()
type T_EpochState_848 = EpochState
pattern C_EpochState'46'constructor_9451 a0 a1 a2 a3 = MkEpochState a0 a1 a2 a3
check_EpochState'46'constructor_9451 ::
  T_Acnt_832 ->
  T_LState_804 ->
  T_EnactState_534 -> T_RatifyState_772 -> T_EpochState_848
check_EpochState'46'constructor_9451 = MkEpochState
cover_EpochState_848 :: EpochState -> ()
cover_EpochState_848 x
  = case x of
      MkEpochState _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EpochState.acnt
d_acnt_858 :: T_EpochState_848 -> T_Acnt_832
d_acnt_858 v0
  = case coe v0 of
      C_EpochState'46'constructor_9451 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.ls
d_ls_860 :: T_EpochState_848 -> T_LState_804
d_ls_860 v0
  = case coe v0 of
      C_EpochState'46'constructor_9451 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.es
d_es_862 :: T_EpochState_848 -> T_EnactState_534
d_es_862 v0
  = case coe v0 of
      C_EpochState'46'constructor_9451 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EpochState.fut
d_fut_864 :: T_EpochState_848 -> T_RatifyState_772
d_fut_864 v0
  = case coe v0 of
      C_EpochState'46'constructor_9451 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState
d_NewEpochState_866 = ()
type T_NewEpochState_866 = NewEpochState
pattern C_NewEpochState'46'constructor_9499 a0 a1 = MkNewEpochState a0 a1
check_NewEpochState'46'constructor_9499 ::
  Integer -> T_EpochState_848 -> T_NewEpochState_866
check_NewEpochState'46'constructor_9499 = MkNewEpochState
cover_NewEpochState_866 :: NewEpochState -> ()
cover_NewEpochState_866 x
  = case x of
      MkNewEpochState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.NewEpochState.lastEpoch
d_lastEpoch_872 :: T_NewEpochState_866 -> Integer
d_lastEpoch_872 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_9499 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.NewEpochState.epochState
d_epochState_874 :: T_NewEpochState_866 -> T_EpochState_848
d_epochState_874 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_9499 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.ChainState
d_ChainState_876 = ()
type T_ChainState_876 = ChainState
pattern C_ChainState'46'constructor_9517 a0 = MkChainState a0
check_ChainState'46'constructor_9517 ::
  T_NewEpochState_866 -> T_ChainState_876
check_ChainState'46'constructor_9517 = MkChainState
cover_ChainState_876 :: ChainState -> ()
cover_ChainState_876 x
  = case x of
      MkChainState _ -> ()
-- Ledger.Foreign.LedgerTypes.ChainState.csNewEpochState
d_csNewEpochState_880 :: T_ChainState_876 -> T_NewEpochState_866
d_csNewEpochState_880 v0
  = case coe v0 of
      C_ChainState'46'constructor_9517 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Block
d_Block_882 = ()
type T_Block_882 = Block
pattern C_Block'46'constructor_9531 a0 a1 = MkBlock a0 a1
check_Block'46'constructor_9531 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Tx_224 ->
  Integer -> T_Block_882
check_Block'46'constructor_9531 = MkBlock
cover_Block_882 :: Block -> ()
cover_Block_882 x
  = case x of
      MkBlock _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Block.blockTxs
d_blockTxs_888 :: T_Block_882 -> [T_Tx_224]
d_blockTxs_888 v0
  = case coe v0 of
      C_Block'46'constructor_9531 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Block.blockSlot
d_blockSlot_890 :: T_Block_882 -> Integer
d_blockSlot_890 v0
  = case coe v0 of
      C_Block'46'constructor_9531 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv
d_DelegEnv_892 = ()
type T_DelegEnv_892 = DelegEnv
pattern C_DelegEnv'46'constructor_9555 a0 a1 = MkDelegEnv a0 a1
check_DelegEnv'46'constructor_9555 ::
  T_PParams_302 ->
  T_HSMap_26 T_Credential_118 T_Credential_118 -> T_DelegEnv_892
check_DelegEnv'46'constructor_9555 = MkDelegEnv
cover_DelegEnv_892 :: DelegEnv -> ()
cover_DelegEnv_892 x
  = case x of
      MkDelegEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.DelegEnv.dePParams
d_dePParams_898 :: T_DelegEnv_892 -> T_PParams_302
d_dePParams_898 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_9555 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.DelegEnv.dePools
d_dePools_900 ::
  T_DelegEnv_892 -> T_HSMap_26 T_Credential_118 T_Credential_118
d_dePools_900 v0
  = case coe v0 of
      C_DelegEnv'46'constructor_9555 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
