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
import qualified MAlonzo.Code.Foreign.Haskell.Pair

import GHC.Generics (Generic)
import Data.TreeDiff
import Prelude hiding (Rational)
data AgdaEmpty deriving (Show, Generic)
instance ToExpr AgdaEmpty
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

instance (ToExpr e, ToExpr a) => ToExpr (ComputationResult e a)
type Rational = (Integer, Integer)
type Coin  = Integer
type Addr  = Integer

type TxId    = Integer
type Ix      = Integer
type Epoch   = Integer
type ScriptHash    = Integer

type AuxiliaryData = ()
type DataHash      = ()
type Datum         = ()
type Redeemer      = ()
type Anchor        = ()
type Network       = ()

type TxIn  = (TxId, Ix)
type TxOut = (Addr, (Coin, Maybe DataHash))
type UTxO  = [(TxIn, TxOut)]
type Hash  = Integer

data Tag     = Spend | Mint | Cert | Rewrd | Vote | Propose deriving (Show, Generic)
instance ToExpr Tag
type RdmrPtr = (Tag, Ix)
type ExUnits = (Integer, Integer)
type ProtVer = (Integer, Integer)
type GovActionID = (TxId, Integer)
data Credential
  = ScriptObj Integer
  | KeyHashObj Integer
  deriving (Show, Eq, Generic)
instance ToExpr Credential
type PoolParams = Credential
type RwdAddr = (Network, Credential)

data GovRole
  = CC
  | DRep
  | SPO
  deriving (Show, Eq, Generic)
instance ToExpr GovRole
data VDeleg
  = CredVoter GovRole Credential
  | AbstainRep
  | NoConfidenceRep
  deriving (Show, Eq, Generic)
instance ToExpr VDeleg
data TxCert
  = Delegate Credential (Maybe VDeleg) (Maybe Credential) Coin
  | Dereg Credential
  | RegPool Credential PoolParams
  | RetirePool Credential Epoch
  | RegDRep Credential Coin Anchor
  | DeRegDRep Credential
  | CCRegHot Credential (Maybe Credential)
  deriving (Show, Eq, Generic)
instance ToExpr TxCert
data TxBody = MkTxBody
  { txins  :: [TxIn]
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
instance ToExpr TxBody
data TxWitnesses = MkTxWitnesses
  { vkSigs  :: [(Integer, Integer)]
  , scripts :: [AgdaEmpty]
  , txdats  :: [(DataHash, Datum)]
  , txrdmrs :: [(RdmrPtr, (Redeemer, ExUnits))]
  } deriving (Show, Generic)
instance ToExpr TxWitnesses
data Tx = MkTx
  { body :: TxBody
  , wits :: TxWitnesses
  , txAD :: Maybe AuxiliaryData
  } deriving (Show, Generic)
instance ToExpr Tx
data PParams = MkPParams
  { a                   :: Integer
  , b                   :: Integer
  , maxBlockSize        :: Integer
  , maxTxSize           :: Integer
  , maxHeaderSize       :: Integer
  , maxValSize          :: Integer
  , minUTxOValue        :: Coin
  , poolDeposit         :: Coin
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
  , costmdls            :: AgdaEmpty
  , prices              :: ()
  , maxTxExUnits        :: ExUnits
  , maxBlockExUnits     :: ExUnits
  , coinsPerUTxOWord    :: Coin
  , maxCollateralInputs :: Integer
  } deriving (Show, Generic)
instance ToExpr PParams
data UTxOEnv = MkUTxOEnv
  { slot    :: Integer
  , pparams :: PParams
  } deriving (Show, Generic)
instance ToExpr UTxOEnv
data UTxOState = MkUTxOState
  { utxo :: UTxO
  , fees :: Coin
  } deriving (Show, Generic)
instance ToExpr UTxOState
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
  | ChangePParams ()
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
-- Ledger.Foreign.LedgerTypes.Coin
d_Coin_30 :: ()
d_Coin_30 = erased
-- Ledger.Foreign.LedgerTypes.Addr
d_Addr_32 :: ()
d_Addr_32 = erased
-- Ledger.Foreign.LedgerTypes.TxId
d_TxId_34 :: ()
d_TxId_34 = erased
-- Ledger.Foreign.LedgerTypes.Ix
d_Ix_36 :: ()
d_Ix_36 = erased
-- Ledger.Foreign.LedgerTypes.Epoch
d_Epoch_38 :: ()
d_Epoch_38 = erased
-- Ledger.Foreign.LedgerTypes.ScriptHash
d_ScriptHash_40 :: ()
d_ScriptHash_40 = erased
-- Ledger.Foreign.LedgerTypes.AuxiliaryData
d_AuxiliaryData_42 :: ()
d_AuxiliaryData_42 = erased
-- Ledger.Foreign.LedgerTypes.DataHash
d_DataHash_44 :: ()
d_DataHash_44 = erased
-- Ledger.Foreign.LedgerTypes.Datum
d_Datum_46 :: ()
d_Datum_46 = erased
-- Ledger.Foreign.LedgerTypes.Redeemer
d_Redeemer_48 :: ()
d_Redeemer_48 = erased
-- Ledger.Foreign.LedgerTypes.Anchor
d_Anchor_50 :: ()
d_Anchor_50 = erased
-- Ledger.Foreign.LedgerTypes.Network
d_Network_52 :: ()
d_Network_52 = erased
-- Ledger.Foreign.LedgerTypes.PParamsUpdate
d_PParamsUpdate_54 :: ()
d_PParamsUpdate_54 = erased
-- Ledger.Foreign.LedgerTypes.TxIn
d_TxIn_56 :: ()
d_TxIn_56 = erased
-- Ledger.Foreign.LedgerTypes.TxOut
d_TxOut_58 :: ()
d_TxOut_58 = erased
-- Ledger.Foreign.LedgerTypes.UTxO
d_UTxO_60 :: ()
d_UTxO_60 = erased
-- Ledger.Foreign.LedgerTypes.Hash
d_Hash_62 :: ()
d_Hash_62 = erased
-- Ledger.Foreign.LedgerTypes.GovActionID
d_GovActionID_64 :: ()
d_GovActionID_64 = erased
-- Ledger.Foreign.LedgerTypes.HashProtected
d_HashProtected_66 :: () -> ()
d_HashProtected_66 = erased
-- Ledger.Foreign.LedgerTypes.Tag
d_Tag_70 = ()
type T_Tag_70 = Tag
pattern C_Spend_72 = Spend
pattern C_Mint_74 = Mint
pattern C_Cert_76 = Cert
pattern C_Rewrd_78 = Rewrd
pattern C_VoteTag_80 = Vote
pattern C_Propose_82 = Propose
check_Spend_72 :: T_Tag_70
check_Spend_72 = Spend
check_Mint_74 :: T_Tag_70
check_Mint_74 = Mint
check_Cert_76 :: T_Tag_70
check_Cert_76 = Cert
check_Rewrd_78 :: T_Tag_70
check_Rewrd_78 = Rewrd
check_VoteTag_80 :: T_Tag_70
check_VoteTag_80 = Vote
check_Propose_82 :: T_Tag_70
check_Propose_82 = Propose
cover_Tag_70 :: Tag -> ()
cover_Tag_70 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Foreign.LedgerTypes.RdmrPtr
d_RdmrPtr_84 :: ()
d_RdmrPtr_84 = erased
-- Ledger.Foreign.LedgerTypes.ExUnits
d_ExUnits_86 :: ()
d_ExUnits_86 = erased
-- Ledger.Foreign.LedgerTypes.ProtVer
d_ProtVer_88 :: ()
d_ProtVer_88 = erased
-- Ledger.Foreign.LedgerTypes.Credential
d_Credential_90 = ()
type T_Credential_90 = Credential
pattern C_ScriptObj_92 a0 = ScriptObj a0
pattern C_KeyHashObj_94 a0 = KeyHashObj a0
check_ScriptObj_92 :: Integer -> T_Credential_90
check_ScriptObj_92 = ScriptObj
check_KeyHashObj_94 :: Integer -> T_Credential_90
check_KeyHashObj_94 = KeyHashObj
cover_Credential_90 :: Credential -> ()
cover_Credential_90 x
  = case x of
      ScriptObj _ -> ()
      KeyHashObj _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolParams
d_PoolParams_96 :: ()
d_PoolParams_96 = erased
-- Ledger.Foreign.LedgerTypes.RwdAddr
d_RwdAddr_98 :: ()
d_RwdAddr_98 = erased
-- Ledger.Foreign.LedgerTypes.GovRole
d_GovRole_100 = ()
type T_GovRole_100 = GovRole
pattern C_CC_102 = CC
pattern C_DRep_104 = DRep
pattern C_SPO_106 = SPO
check_CC_102 :: T_GovRole_100
check_CC_102 = CC
check_DRep_104 :: T_GovRole_100
check_DRep_104 = DRep
check_SPO_106 :: T_GovRole_100
check_SPO_106 = SPO
cover_GovRole_100 :: GovRole -> ()
cover_GovRole_100 x
  = case x of
      CC -> ()
      DRep -> ()
      SPO -> ()
-- Ledger.Foreign.LedgerTypes.VDeleg
d_VDeleg_108 = ()
type T_VDeleg_108 = VDeleg
pattern C_CredVoter_110 a0 a1 = CredVoter a0 a1
pattern C_AbstainRep_112 = AbstainRep
pattern C_NoConfidenceRep_114 = NoConfidenceRep
check_CredVoter_110 ::
  T_GovRole_100 -> T_Credential_90 -> T_VDeleg_108
check_CredVoter_110 = CredVoter
check_AbstainRep_112 :: T_VDeleg_108
check_AbstainRep_112 = AbstainRep
check_NoConfidenceRep_114 :: T_VDeleg_108
check_NoConfidenceRep_114 = NoConfidenceRep
cover_VDeleg_108 :: VDeleg -> ()
cover_VDeleg_108 x
  = case x of
      CredVoter _ _ -> ()
      AbstainRep -> ()
      NoConfidenceRep -> ()
-- Ledger.Foreign.LedgerTypes.TxCert
d_TxCert_116 = ()
type T_TxCert_116 = TxCert
pattern C_Delegate_118 a0 a1 a2 a3 = Delegate a0 a1 a2 a3
pattern C_Dereg_120 a0 = Dereg a0
pattern C_RegPool_122 a0 a1 = RegPool a0 a1
pattern C_RetirePool_124 a0 a1 = RetirePool a0 a1
pattern C_RegDRep_126 a0 a1 a2 = RegDRep a0 a1 a2
pattern C_DeRegDRep_128 a0 = DeRegDRep a0
pattern C_CCRegHot_130 a0 a1 = CCRegHot a0 a1
check_Delegate_118 ::
  T_Credential_90 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_VDeleg_108 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_90 ->
  Integer -> T_TxCert_116
check_Delegate_118 = Delegate
check_Dereg_120 :: T_Credential_90 -> T_TxCert_116
check_Dereg_120 = Dereg
check_RegPool_122 ::
  T_Credential_90 -> T_Credential_90 -> T_TxCert_116
check_RegPool_122 = RegPool
check_RetirePool_124 :: T_Credential_90 -> Integer -> T_TxCert_116
check_RetirePool_124 = RetirePool
check_RegDRep_126 ::
  T_Credential_90 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_TxCert_116
check_RegDRep_126 = RegDRep
check_DeRegDRep_128 :: T_Credential_90 -> T_TxCert_116
check_DeRegDRep_128 = DeRegDRep
check_CCRegHot_130 ::
  T_Credential_90 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_90 ->
  T_TxCert_116
check_CCRegHot_130 = CCRegHot
cover_TxCert_116 :: TxCert -> ()
cover_TxCert_116 x
  = case x of
      Delegate _ _ _ _ -> ()
      Dereg _ -> ()
      RegPool _ _ -> ()
      RetirePool _ _ -> ()
      RegDRep _ _ _ -> ()
      DeRegDRep _ -> ()
      CCRegHot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_132 = ()
type T_TxBody_132 = TxBody
pattern C_TxBody'46'constructor_1309 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
check_TxBody'46'constructor_1309 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))) ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer)
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_TxCert_116 ->
  T_TxBody_132
check_TxBody'46'constructor_1309 = MkTxBody
cover_TxBody_132 :: TxBody -> ()
cover_TxBody_132 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody.txins
d_txins_154 ::
  T_TxBody_132 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_txins_154 v0
  = case coe v0 of
      C_TxBody'46'constructor_1309 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txouts
d_txouts_156 ::
  T_TxBody_132 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer
           (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))]
d_txouts_156 v0
  = case coe v0 of
      C_TxBody'46'constructor_1309 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_158 :: T_TxBody_132 -> Integer
d_txfee_158 v0
  = case coe v0 of
      C_TxBody'46'constructor_1309 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_160 ::
  T_TxBody_132 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_160 v0
  = case coe v0 of
      C_TxBody'46'constructor_1309 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_162 :: T_TxBody_132 -> Integer
d_txsize_162 v0
  = case coe v0 of
      C_TxBody'46'constructor_1309 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_164 :: T_TxBody_132 -> Integer
d_txid_164 v0
  = case coe v0 of
      C_TxBody'46'constructor_1309 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_166 ::
  T_TxBody_132 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_collateral_166 v0
  = case coe v0 of
      C_TxBody'46'constructor_1309 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_168 :: T_TxBody_132 -> [Integer]
d_reqSigHash_168 v0
  = case coe v0 of
      C_TxBody'46'constructor_1309 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_170 :: T_TxBody_132 -> Maybe Integer
d_scriptIntHash_170 v0
  = case coe v0 of
      C_TxBody'46'constructor_1309 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txcerts
d_txcerts_172 :: T_TxBody_132 -> [T_TxCert_116]
d_txcerts_172 v0
  = case coe v0 of
      C_TxBody'46'constructor_1309 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_174 = ()
type T_TxWitnesses_174 = TxWitnesses
pattern C_TxWitnesses'46'constructor_1631 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_1631 ::
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
          () () T_Tag_70 Integer)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer Integer))) ->
  T_TxWitnesses_174
check_TxWitnesses'46'constructor_1631 = MkTxWitnesses
cover_TxWitnesses_174 :: TxWitnesses -> ()
cover_TxWitnesses_174 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxWitnesses.vkSigs
d_vkSigs_184 ::
  T_TxWitnesses_174 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_vkSigs_184 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1631 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_186 :: T_TxWitnesses_174 -> [T_Empty_6]
d_scripts_186 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1631 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_188 ::
  T_TxWitnesses_174 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
     MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6]
d_txdats_188 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1631 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txrdmrs
d_txrdmrs_190 ::
  T_TxWitnesses_174 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_Tag_70 Integer)
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer Integer))]
d_txrdmrs_190 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1631 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_192 = ()
type T_Tx_192 = Tx
pattern C_Tx'46'constructor_1719 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_1719 ::
  T_TxBody_132 ->
  T_TxWitnesses_174 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_192
check_Tx'46'constructor_1719 = MkTx
cover_Tx_192 :: Tx -> ()
cover_Tx_192 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_200 :: T_Tx_192 -> T_TxBody_132
d_body_200 v0
  = case coe v0 of
      C_Tx'46'constructor_1719 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_202 :: T_Tx_192 -> T_TxWitnesses_174
d_wits_202 v0
  = case coe v0 of
      C_Tx'46'constructor_1719 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_204 ::
  T_Tx_192 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_204 v0
  = case coe v0 of
      C_Tx'46'constructor_1719 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_206 = ()
type T_PParams_206 = PParams
pattern C_PParams'46'constructor_2447 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23
check_PParams'46'constructor_2447 ::
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
  T_Empty_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  Integer -> Integer -> T_PParams_206
check_PParams'46'constructor_2447 = MkPParams
cover_PParams_206 :: PParams -> ()
cover_PParams_206 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_256 :: T_PParams_206 -> Integer
d_a_256 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_258 :: T_PParams_206 -> Integer
d_b_258 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_260 :: T_PParams_206 -> Integer
d_maxBlockSize_260 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_262 :: T_PParams_206 -> Integer
d_maxTxSize_262 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_264 :: T_PParams_206 -> Integer
d_maxHeaderSize_264 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_266 :: T_PParams_206 -> Integer
d_maxValSize_266 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_268 :: T_PParams_206 -> Integer
d_minUTxOValue_268 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_270 :: T_PParams_206 -> Integer
d_poolDeposit_270 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_272 :: T_PParams_206 -> Integer
d_Emax_272 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.nopt
d_nopt_274 :: T_PParams_206 -> Integer
d_nopt_274 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_276 ::
  T_PParams_206 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_276 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.votingThresholds
d_votingThresholds_278 ::
  T_PParams_206 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_votingThresholds_278 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_280 :: T_PParams_206 -> Integer
d_govActionLifetime_280 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_282 :: T_PParams_206 -> Integer
d_govActionDeposit_282 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_284 :: T_PParams_206 -> Integer
d_drepDeposit_284 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_286 :: T_PParams_206 -> Integer
d_drepActivity_286 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_288 :: T_PParams_206 -> Integer
d_ccMinSize_288 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_290 :: T_PParams_206 -> Integer
d_ccMaxTermLength_290 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_292 :: T_PParams_206 -> T_Empty_6
d_costmdls_292 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_294 ::
  T_PParams_206 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_294 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_296 ::
  T_PParams_206 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_296 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_298 ::
  T_PParams_206 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_298 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_300 :: T_PParams_206 -> Integer
d_coinsPerUTxOWord_300 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_302 :: T_PParams_206 -> Integer
d_maxCollateralInputs_302 v0
  = case coe v0 of
      C_PParams'46'constructor_2447 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_304 = ()
type T_UTxOEnv_304 = UTxOEnv
pattern C_UTxOEnv'46'constructor_3677 a0 a1 = MkUTxOEnv a0 a1
check_UTxOEnv'46'constructor_3677 ::
  Integer -> T_PParams_206 -> T_UTxOEnv_304
check_UTxOEnv'46'constructor_3677 = MkUTxOEnv
cover_UTxOEnv_304 :: UTxOEnv -> ()
cover_UTxOEnv_304 x
  = case x of
      MkUTxOEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_310 :: T_UTxOEnv_304 -> Integer
d_slot_310 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_3677 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_312 :: T_UTxOEnv_304 -> T_PParams_206
d_pparams_312 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_3677 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_314 = ()
type T_UTxOState_314 = UTxOState
pattern C_UTxOState'46'constructor_3719 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_3719 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () Integer
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer
             (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
                () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))) ->
  Integer -> T_UTxOState_314
check_UTxOState'46'constructor_3719 = MkUTxOState
cover_UTxOState_314 :: UTxOState -> ()
cover_UTxOState_314 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_320 ::
  T_UTxOState_314 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer
           (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))]
d_utxo_320 v0
  = case coe v0 of
      C_UTxOState'46'constructor_3719 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_322 :: T_UTxOState_314 -> Integer
d_fees_322 v0
  = case coe v0 of
      C_UTxOState'46'constructor_3719 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState
d_EnactState_324 = ()
type T_EnactState_324 = EnactState
pattern C_EnactState'46'constructor_3825 a0 a1 a2 a3 a4 = MkEnactState a0 a1 a2 a3 a4
check_EnactState'46'constructor_3825 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () ()
          (MAlonzo.Code.Agda.Builtin.List.T_List_10
             ()
             (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
                () () T_Credential_90 Integer))
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_PParams_206
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () Integer Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_90)
       Integer) ->
  T_EnactState_324
check_EnactState'46'constructor_3825 = MkEnactState
cover_EnactState_324 :: EnactState -> ()
cover_EnactState_324 x
  = case x of
      MkEnactState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.EnactState.esCC
d_esCC_336 ::
  T_EnactState_324 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (Maybe
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          AgdaAny AgdaAny
          [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny T_Credential_90 Integer]
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             AgdaAny AgdaAny Integer Integer)))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_esCC_336 v0
  = case coe v0 of
      C_EnactState'46'constructor_3825 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esConstitution
d_esConstitution_338 ::
  T_EnactState_324 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
       (Maybe Integer))
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_esConstitution_338 v0
  = case coe v0 of
      C_EnactState'46'constructor_3825 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPV
d_esPV_340 ::
  T_EnactState_324 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_esPV_340 v0
  = case coe v0 of
      C_EnactState'46'constructor_3825 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esPParams
d_esPParams_342 ::
  T_EnactState_324 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_PParams_206
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
d_esPParams_342 v0
  = case coe v0 of
      C_EnactState'46'constructor_3825 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.EnactState.esWithdrawals
d_esWithdrawals_344 ::
  T_EnactState_324 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
        T_Credential_90)
     Integer]
d_esWithdrawals_344 v0
  = case coe v0 of
      C_EnactState'46'constructor_3825 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv
d_GovEnv_346 = ()
type T_GovEnv_346 = GovEnv
pattern C_GovEnv'46'constructor_3953 a0 a1 a2 a3 a4 = MkGovEnv a0 a1 a2 a3 a4
check_GovEnv'46'constructor_3953 ::
  Integer ->
  Integer ->
  T_PParams_206 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_EnactState_324 -> T_GovEnv_346
check_GovEnv'46'constructor_3953 = MkGovEnv
cover_GovEnv_346 :: GovEnv -> ()
cover_GovEnv_346 x
  = case x of
      MkGovEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovEnv.geTxId
d_geTxId_358 :: T_GovEnv_346 -> Integer
d_geTxId_358 v0
  = case coe v0 of
      C_GovEnv'46'constructor_3953 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEpoch
d_geEpoch_360 :: T_GovEnv_346 -> Integer
d_geEpoch_360 v0
  = case coe v0 of
      C_GovEnv'46'constructor_3953 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePParams
d_gePParams_362 :: T_GovEnv_346 -> T_PParams_206
d_gePParams_362 v0
  = case coe v0 of
      C_GovEnv'46'constructor_3953 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.gePPolicy
d_gePPolicy_364 :: T_GovEnv_346 -> Maybe Integer
d_gePPolicy_364 v0
  = case coe v0 of
      C_GovEnv'46'constructor_3953 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovEnv.geEnactState
d_geEnactState_366 :: T_GovEnv_346 -> T_EnactState_324
d_geEnactState_366 v0
  = case coe v0 of
      C_GovEnv'46'constructor_3953 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Voter
d_Voter_368 :: ()
d_Voter_368 = erased
-- Ledger.Foreign.LedgerTypes.GovAction
d_GovAction_370 = ()
type T_GovAction_370 = GovAction
pattern C_NoConfidence_372 = NoConfidence
pattern C_NewCommittee_374 a0 a1 a2 = NewCommittee a0 a1 a2
pattern C_NewConstitution_376 a0 a1 = NewConstitution a0 a1
pattern C_TriggerHF_378 a0 = TriggerHF a0
pattern C_ChangePParams_380 a0 = ChangePParams a0
pattern C_TreasuryWdrl_382 a0 = TreasuryWdrl a0
pattern C_Info_384 = Info
check_NoConfidence_372 :: T_GovAction_370
check_NoConfidence_372 = NoConfidence
check_NewCommittee_374 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_Credential_90 Integer) ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Credential_90 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_370
check_NewCommittee_374 = NewCommittee
check_NewConstitution_376 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_GovAction_370
check_NewConstitution_376 = NewConstitution
check_TriggerHF_378 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovAction_370
check_TriggerHF_378 = TriggerHF
check_ChangePParams_380 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_GovAction_370
check_ChangePParams_380 = ChangePParams
check_TreasuryWdrl_382 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_90)
       Integer) ->
  T_GovAction_370
check_TreasuryWdrl_382 = TreasuryWdrl
check_Info_384 :: T_GovAction_370
check_Info_384 = Info
cover_GovAction_370 :: GovAction -> ()
cover_GovAction_370 x
  = case x of
      NoConfidence -> ()
      NewCommittee _ _ _ -> ()
      NewConstitution _ _ -> ()
      TriggerHF _ -> ()
      ChangePParams _ -> ()
      TreasuryWdrl _ -> ()
      Info -> ()
-- Ledger.Foreign.LedgerTypes.Vote
d_Vote_386 = ()
type T_Vote_386 = Vote
pattern C_VoteYes_388 = VoteYes
pattern C_VoteNo_390 = VoteNo
pattern C_VoteAbstain_392 = VoteAbstain
check_VoteYes_388 :: T_Vote_386
check_VoteYes_388 = VoteYes
check_VoteNo_390 :: T_Vote_386
check_VoteNo_390 = VoteNo
check_VoteAbstain_392 :: T_Vote_386
check_VoteAbstain_392 = VoteAbstain
cover_Vote_386 :: Vote -> ()
cover_Vote_386 x
  = case x of
      VoteYes -> ()
      VoteNo -> ()
      VoteAbstain -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState
d_GovActionState_394 = ()
type T_GovActionState_394 = GovActionState
pattern C_GovActionState'46'constructor_4365 a0 a1 a2 a3 a4 = MkGovActionState a0 a1 a2 a3 a4
check_GovActionState'46'constructor_4365 ::
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () T_GovRole_100 T_Credential_90)
       T_Vote_386) ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_90 ->
  Integer ->
  T_GovAction_370 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  T_GovActionState_394
check_GovActionState'46'constructor_4365 = MkGovActionState
cover_GovActionState_394 :: GovActionState -> ()
cover_GovActionState_394 x
  = case x of
      MkGovActionState _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovActionState.gasVotes
d_gasVotes_406 ::
  T_GovActionState_394 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_GovRole_100 T_Credential_90)
     T_Vote_386]
d_gasVotes_406 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4365 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasReturnAddr
d_gasReturnAddr_408 ::
  T_GovActionState_394 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_90
d_gasReturnAddr_408 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4365 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasExpiresIn
d_gasExpiresIn_410 :: T_GovActionState_394 -> Integer
d_gasExpiresIn_410 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4365 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasAction
d_gasAction_412 :: T_GovActionState_394 -> T_GovAction_370
d_gasAction_412 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4365 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovActionState.gasPrevAction
d_gasPrevAction_414 ::
  T_GovActionState_394 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_gasPrevAction_414 v0
  = case coe v0 of
      C_GovActionState'46'constructor_4365 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote
d_GovVote_416 = ()
type T_GovVote_416 = GovVote
pattern C_GovVote'46'constructor_4485 a0 a1 a2 a3 = MkGovVote a0 a1 a2 a3
check_GovVote'46'constructor_4485 ::
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () T_GovRole_100 T_Credential_90 ->
  T_Vote_386 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_GovVote_416
check_GovVote'46'constructor_4485 = MkGovVote
cover_GovVote_416 :: GovVote -> ()
cover_GovVote_416 x
  = case x of
      MkGovVote _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovVote.gvGid
d_gvGid_426 ::
  T_GovVote_416 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_gvGid_426 v0
  = case coe v0 of
      C_GovVote'46'constructor_4485 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVoter
d_gvVoter_428 ::
  T_GovVote_416 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny T_GovRole_100 T_Credential_90
d_gvVoter_428 v0
  = case coe v0 of
      C_GovVote'46'constructor_4485 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvVote
d_gvVote_430 :: T_GovVote_416 -> T_Vote_386
d_gvVote_430 v0
  = case coe v0 of
      C_GovVote'46'constructor_4485 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovVote.gvAnchor
d_gvAnchor_432 ::
  T_GovVote_416 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gvAnchor_432 v0
  = case coe v0 of
      C_GovVote'46'constructor_4485 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal
d_GovProposal_434 = ()
type T_GovProposal_434 = GovProposal
pattern C_GovProposal'46'constructor_4597 a0 a1 a2 a3 a4 a5 = MkGovProposal a0 a1 a2 a3 a4 a5
check_GovProposal'46'constructor_4597 ::
  T_GovAction_370 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 T_Credential_90 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_GovProposal_434
check_GovProposal'46'constructor_4597 = MkGovProposal
cover_GovProposal_434 :: GovProposal -> ()
cover_GovProposal_434 x
  = case x of
      MkGovProposal _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAction
d_gpAction_448 :: T_GovProposal_434 -> T_GovAction_370
d_gpAction_448 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4597 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPrevAction
d_gpPrevAction_450 ::
  T_GovProposal_434 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_gpPrevAction_450 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4597 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpPolicy
d_gpPolicy_452 :: T_GovProposal_434 -> Maybe Integer
d_gpPolicy_452 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4597 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpDeposit
d_gpDeposit_454 :: T_GovProposal_434 -> Integer
d_gpDeposit_454 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4597 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpReturnAddr
d_gpReturnAddr_456 ::
  T_GovProposal_434 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
    T_Credential_90
d_gpReturnAddr_456 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4597 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovProposal.gpAnchor
d_gpAnchor_458 ::
  T_GovProposal_434 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_gpAnchor_458 v0
  = case coe v0 of
      C_GovProposal'46'constructor_4597 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.GovSignal
d_GovSignal_460 = ()
type T_GovSignal_460 = GovSignal
pattern C_GovSignalVote_462 a0 = GovSignalVote a0
pattern C_GovSignalProposal_464 a0 = GovSignalProposal a0
check_GovSignalVote_462 :: T_GovVote_416 -> T_GovSignal_460
check_GovSignalVote_462 = GovSignalVote
check_GovSignalProposal_464 :: T_GovProposal_434 -> T_GovSignal_460
check_GovSignalProposal_464 = GovSignalProposal
cover_GovSignal_460 :: GovSignal -> ()
cover_GovSignal_460 x
  = case x of
      GovSignalVote _ -> ()
      GovSignalProposal _ -> ()
-- Ledger.Foreign.LedgerTypes.GovState
d_GovState_466 :: ()
d_GovState_466 = erased
