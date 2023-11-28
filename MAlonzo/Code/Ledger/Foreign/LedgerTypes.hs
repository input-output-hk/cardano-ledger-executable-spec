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
data AgdaEmpty deriving (Show, Generic)
instance ToExpr AgdaEmpty
type Coin  = Integer
type Addr  = Integer

type TxId    = Integer
type Ix      = Integer
type Epoch   = Integer

type AuxiliaryData = ()
type DataHash      = ()
type Datum         = ()
type Redeemer      = ()
type Anchor        = ()

type TxIn  = (TxId, Ix)
type TxOut = (Addr, (Coin, Maybe DataHash))
type UTxO  = [(TxIn, TxOut)]
type Hash  = Integer

data Tag     = Spend | Mint | Cert | Rewrd | Vote | Propose deriving (Show, Generic, Enum, Eq, Ord)
instance ToExpr Tag
type RdmrPtr = (Tag, Ix)
type ExUnits = (Integer, Integer)
data Credential
  = ScriptObj Integer
  | KeyHashObj Integer
  deriving (Show, Eq, Generic)
instance ToExpr Credential
type PoolParams = Credential

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
  , pv                  :: (Integer, Integer)
  , votingThresholds    :: ()
  , govActionLifetime   :: Integer
  , govActionDeposit    :: Coin
  , drepDeposit         :: Coin
  , drepActivity        :: Epoch
  , ccMinSize           :: Integer
  , ccMaxTermLength     :: Integer
  , minimumAVS          :: Coin
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
-- Ledger.Foreign.LedgerTypes.Empty
d_Empty_6 = ()
type T_Empty_6 = AgdaEmpty
cover_Empty_6 :: AgdaEmpty -> ()
cover_Empty_6 x = case x of
-- Ledger.Foreign.LedgerTypes.HSMap
d_HSMap_8 :: () -> () -> ()
d_HSMap_8 = erased
-- Ledger.Foreign.LedgerTypes.Coin
d_Coin_14 :: ()
d_Coin_14 = erased
-- Ledger.Foreign.LedgerTypes.Addr
d_Addr_16 :: ()
d_Addr_16 = erased
-- Ledger.Foreign.LedgerTypes.TxId
d_TxId_18 :: ()
d_TxId_18 = erased
-- Ledger.Foreign.LedgerTypes.Ix
d_Ix_20 :: ()
d_Ix_20 = erased
-- Ledger.Foreign.LedgerTypes.Epoch
d_Epoch_22 :: ()
d_Epoch_22 = erased
-- Ledger.Foreign.LedgerTypes.AuxiliaryData
d_AuxiliaryData_24 :: ()
d_AuxiliaryData_24 = erased
-- Ledger.Foreign.LedgerTypes.DataHash
d_DataHash_26 :: ()
d_DataHash_26 = erased
-- Ledger.Foreign.LedgerTypes.Datum
d_Datum_28 :: ()
d_Datum_28 = erased
-- Ledger.Foreign.LedgerTypes.Redeemer
d_Redeemer_30 :: ()
d_Redeemer_30 = erased
-- Ledger.Foreign.LedgerTypes.Anchor
d_Anchor_32 :: ()
d_Anchor_32 = erased
-- Ledger.Foreign.LedgerTypes.TxIn
d_TxIn_34 :: ()
d_TxIn_34 = erased
-- Ledger.Foreign.LedgerTypes.TxOut
d_TxOut_36 :: ()
d_TxOut_36 = erased
-- Ledger.Foreign.LedgerTypes.UTxO
d_UTxO_38 :: ()
d_UTxO_38 = erased
-- Ledger.Foreign.LedgerTypes.Hash
d_Hash_40 :: ()
d_Hash_40 = erased
-- Ledger.Foreign.LedgerTypes.Tag
d_Tag_42 = ()
type T_Tag_42 = Tag
pattern C_Spend_44 = Spend
pattern C_Mint_46 = Mint
pattern C_Cert_48 = Cert
pattern C_Rewrd_50 = Rewrd
pattern C_Vote_52 = Vote
pattern C_Propose_54 = Propose
check_Spend_44 :: T_Tag_42
check_Spend_44 = Spend
check_Mint_46 :: T_Tag_42
check_Mint_46 = Mint
check_Cert_48 :: T_Tag_42
check_Cert_48 = Cert
check_Rewrd_50 :: T_Tag_42
check_Rewrd_50 = Rewrd
check_Vote_52 :: T_Tag_42
check_Vote_52 = Vote
check_Propose_54 :: T_Tag_42
check_Propose_54 = Propose
cover_Tag_42 :: Tag -> ()
cover_Tag_42 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Foreign.LedgerTypes.RdmrPtr
d_RdmrPtr_56 :: ()
d_RdmrPtr_56 = erased
-- Ledger.Foreign.LedgerTypes.ExUnits
d_ExUnits_58 :: ()
d_ExUnits_58 = erased
-- Ledger.Foreign.LedgerTypes.Credential
d_Credential_60 = ()
type T_Credential_60 = Credential
pattern C_ScriptObj_62 a0 = ScriptObj a0
pattern C_KeyHashObj_64 a0 = KeyHashObj a0
check_ScriptObj_62 :: Integer -> T_Credential_60
check_ScriptObj_62 = ScriptObj
check_KeyHashObj_64 :: Integer -> T_Credential_60
check_KeyHashObj_64 = KeyHashObj
cover_Credential_60 :: Credential -> ()
cover_Credential_60 x
  = case x of
      ScriptObj _ -> ()
      KeyHashObj _ -> ()
-- Ledger.Foreign.LedgerTypes.PoolParams
d_PoolParams_66 :: ()
d_PoolParams_66 = erased
-- Ledger.Foreign.LedgerTypes.GovRole
d_GovRole_68 = ()
type T_GovRole_68 = GovRole
pattern C_CC_70 = CC
pattern C_DRep_72 = DRep
pattern C_SPO_74 = SPO
check_CC_70 :: T_GovRole_68
check_CC_70 = CC
check_DRep_72 :: T_GovRole_68
check_DRep_72 = DRep
check_SPO_74 :: T_GovRole_68
check_SPO_74 = SPO
cover_GovRole_68 :: GovRole -> ()
cover_GovRole_68 x
  = case x of
      CC -> ()
      DRep -> ()
      SPO -> ()
-- Ledger.Foreign.LedgerTypes.VDeleg
d_VDeleg_76 = ()
type T_VDeleg_76 = VDeleg
pattern C_CredVoter_78 a0 a1 = CredVoter a0 a1
pattern C_AbstainRep_80 = AbstainRep
pattern C_NoConfidenceRep_82 = NoConfidenceRep
check_CredVoter_78 ::
  T_GovRole_68 -> T_Credential_60 -> T_VDeleg_76
check_CredVoter_78 = CredVoter
check_AbstainRep_80 :: T_VDeleg_76
check_AbstainRep_80 = AbstainRep
check_NoConfidenceRep_82 :: T_VDeleg_76
check_NoConfidenceRep_82 = NoConfidenceRep
cover_VDeleg_76 :: VDeleg -> ()
cover_VDeleg_76 x
  = case x of
      CredVoter _ _ -> ()
      AbstainRep -> ()
      NoConfidenceRep -> ()
-- Ledger.Foreign.LedgerTypes.TxCert
d_TxCert_84 = ()
type T_TxCert_84 = TxCert
pattern C_Delegate_86 a0 a1 a2 a3 = Delegate a0 a1 a2 a3
pattern C_RegPool_88 a0 a1 = RegPool a0 a1
pattern C_RetirePool_90 a0 a1 = RetirePool a0 a1
pattern C_RegDRep_92 a0 a1 a2 = RegDRep a0 a1 a2
pattern C_DeRegDRep_94 a0 = DeRegDRep a0
pattern C_CCRegHot_96 a0 a1 = CCRegHot a0 a1
check_Delegate_86 ::
  T_Credential_60 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_VDeleg_76 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_60 ->
  Integer -> T_TxCert_84
check_Delegate_86 = Delegate
check_RegPool_88 ::
  T_Credential_60 -> T_Credential_60 -> T_TxCert_84
check_RegPool_88 = RegPool
check_RetirePool_90 :: T_Credential_60 -> Integer -> T_TxCert_84
check_RetirePool_90 = RetirePool
check_RegDRep_92 ::
  T_Credential_60 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> T_TxCert_84
check_RegDRep_92 = RegDRep
check_DeRegDRep_94 :: T_Credential_60 -> T_TxCert_84
check_DeRegDRep_94 = DeRegDRep
check_CCRegHot_96 ::
  T_Credential_60 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_60 ->
  T_TxCert_84
check_CCRegHot_96 = CCRegHot
cover_TxCert_84 :: TxCert -> ()
cover_TxCert_84 x
  = case x of
      Delegate _ _ _ _ -> ()
      RegPool _ _ -> ()
      RetirePool _ _ -> ()
      RegDRep _ _ _ -> ()
      DeRegDRep _ -> ()
      CCRegHot _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_98 = ()
type T_TxBody_98 = TxBody
pattern C_TxBody'46'constructor_1079 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8 a9
check_TxBody'46'constructor_1079 ::
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
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_TxCert_84 ->
  T_TxBody_98
check_TxBody'46'constructor_1079 = MkTxBody
cover_TxBody_98 :: TxBody -> ()
cover_TxBody_98 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody.txins
d_txins_120 ::
  T_TxBody_98 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_txins_120 v0
  = case coe v0 of
      C_TxBody'46'constructor_1079 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txouts
d_txouts_122 ::
  T_TxBody_98 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer
           (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))]
d_txouts_122 v0
  = case coe v0 of
      C_TxBody'46'constructor_1079 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_124 :: T_TxBody_98 -> Integer
d_txfee_124 v0
  = case coe v0 of
      C_TxBody'46'constructor_1079 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_126 ::
  T_TxBody_98 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_126 v0
  = case coe v0 of
      C_TxBody'46'constructor_1079 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_128 :: T_TxBody_98 -> Integer
d_txsize_128 v0
  = case coe v0 of
      C_TxBody'46'constructor_1079 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_130 :: T_TxBody_98 -> Integer
d_txid_130 v0
  = case coe v0 of
      C_TxBody'46'constructor_1079 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_132 ::
  T_TxBody_98 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_collateral_132 v0
  = case coe v0 of
      C_TxBody'46'constructor_1079 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_134 :: T_TxBody_98 -> [Integer]
d_reqSigHash_134 v0
  = case coe v0 of
      C_TxBody'46'constructor_1079 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_136 :: T_TxBody_98 -> Maybe Integer
d_scriptIntHash_136 v0
  = case coe v0 of
      C_TxBody'46'constructor_1079 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txcerts
d_txcerts_138 :: T_TxBody_98 -> [T_TxCert_84]
d_txcerts_138 v0
  = case coe v0 of
      C_TxBody'46'constructor_1079 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_140 = ()
type T_TxWitnesses_140 = TxWitnesses
pattern C_TxWitnesses'46'constructor_1401 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_1401 ::
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
          () () T_Tag_42 Integer)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer Integer))) ->
  T_TxWitnesses_140
check_TxWitnesses'46'constructor_1401 = MkTxWitnesses
cover_TxWitnesses_140 :: TxWitnesses -> ()
cover_TxWitnesses_140 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxWitnesses.vkSigs
d_vkSigs_150 ::
  T_TxWitnesses_140 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_vkSigs_150 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1401 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_152 :: T_TxWitnesses_140 -> [T_Empty_6]
d_scripts_152 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1401 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_154 ::
  T_TxWitnesses_140 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
     MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6]
d_txdats_154 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1401 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txrdmrs
d_txrdmrs_156 ::
  T_TxWitnesses_140 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_Tag_42 Integer)
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer Integer))]
d_txrdmrs_156 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_1401 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_158 = ()
type T_Tx_158 = Tx
pattern C_Tx'46'constructor_1489 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_1489 ::
  T_TxBody_98 ->
  T_TxWitnesses_140 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_158
check_Tx'46'constructor_1489 = MkTx
cover_Tx_158 :: Tx -> ()
cover_Tx_158 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_166 :: T_Tx_158 -> T_TxBody_98
d_body_166 v0
  = case coe v0 of
      C_Tx'46'constructor_1489 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_168 :: T_Tx_158 -> T_TxWitnesses_140
d_wits_168 v0
  = case coe v0 of
      C_Tx'46'constructor_1489 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_170 ::
  T_Tx_158 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_170 v0
  = case coe v0 of
      C_Tx'46'constructor_1489 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_172 = ()
type T_PParams_172 = PParams
pattern C_PParams'46'constructor_2205 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23
check_PParams'46'constructor_2205 ::
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
  Integer ->
  T_Empty_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () () Integer Integer ->
  Integer -> Integer -> T_PParams_172
check_PParams'46'constructor_2205 = MkPParams
cover_PParams_172 :: PParams -> ()
cover_PParams_172 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_222 :: T_PParams_172 -> Integer
d_a_222 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_224 :: T_PParams_172 -> Integer
d_b_224 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_226 :: T_PParams_172 -> Integer
d_maxBlockSize_226 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_228 :: T_PParams_172 -> Integer
d_maxTxSize_228 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_230 :: T_PParams_172 -> Integer
d_maxHeaderSize_230 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_232 :: T_PParams_172 -> Integer
d_maxValSize_232 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_234 :: T_PParams_172 -> Integer
d_minUTxOValue_234 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_236 :: T_PParams_172 -> Integer
d_poolDeposit_236 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_238 :: T_PParams_172 -> Integer
d_Emax_238 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_240 ::
  T_PParams_172 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_240 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.votingThresholds
d_votingThresholds_242 ::
  T_PParams_172 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_votingThresholds_242 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_244 :: T_PParams_172 -> Integer
d_govActionLifetime_244 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_246 :: T_PParams_172 -> Integer
d_govActionDeposit_246 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_248 :: T_PParams_172 -> Integer
d_drepDeposit_248 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_250 :: T_PParams_172 -> Integer
d_drepActivity_250 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_252 :: T_PParams_172 -> Integer
d_ccMinSize_252 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_254 :: T_PParams_172 -> Integer
d_ccMaxTermLength_254 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minimumAVS
d_minimumAVS_256 :: T_PParams_172 -> Integer
d_minimumAVS_256 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_258 :: T_PParams_172 -> T_Empty_6
d_costmdls_258 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_260 ::
  T_PParams_172 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_260 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_262 ::
  T_PParams_172 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_262 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_264 ::
  T_PParams_172 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_264 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_266 :: T_PParams_172 -> Integer
d_coinsPerUTxOWord_266 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_268 :: T_PParams_172 -> Integer
d_maxCollateralInputs_268 v0
  = case coe v0 of
      C_PParams'46'constructor_2205 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_270 = ()
type T_UTxOEnv_270 = UTxOEnv
pattern C_UTxOEnv'46'constructor_3435 a0 a1 = MkUTxOEnv a0 a1
check_UTxOEnv'46'constructor_3435 ::
  Integer -> T_PParams_172 -> T_UTxOEnv_270
check_UTxOEnv'46'constructor_3435 = MkUTxOEnv
cover_UTxOEnv_270 :: UTxOEnv -> ()
cover_UTxOEnv_270 x
  = case x of
      MkUTxOEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_276 :: T_UTxOEnv_270 -> Integer
d_slot_276 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_3435 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_278 :: T_UTxOEnv_270 -> T_PParams_172
d_pparams_278 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_3435 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_280 = ()
type T_UTxOState_280 = UTxOState
pattern C_UTxOState'46'constructor_3477 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_3477 ::
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
  Integer -> T_UTxOState_280
check_UTxOState'46'constructor_3477 = MkUTxOState
cover_UTxOState_280 :: UTxOState -> ()
cover_UTxOState_280 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_286 ::
  T_UTxOState_280 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer
           (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))]
d_utxo_286 v0
  = case coe v0 of
      C_UTxOState'46'constructor_3477 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_288 :: T_UTxOState_280 -> Integer
d_fees_288 v0
  = case coe v0 of
      C_UTxOState'46'constructor_3477 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
