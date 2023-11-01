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
data UTxOState = MkUTxOState
  { utxo :: UTxO
  , fees :: Coin
  } deriving (Show, Generic)
instance ToExpr UTxOState
data UTxOEnv = MkUTxOEnv
  { slot    :: Integer
  , pparams :: PParams
  } deriving (Show, Generic)
instance ToExpr UTxOEnv
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
data Tx = MkTx
  { body :: TxBody
  , wits :: TxWitnesses
  , txAD :: Maybe AuxiliaryData
  } deriving (Show, Generic)
instance ToExpr Tx
data TxWitnesses = MkTxWitnesses
  { vkSigs  :: [(Integer, Integer)]
  , scripts :: [AgdaEmpty]
  , txdats  :: [(DataHash, Datum)]
  , txrdmrs :: [(RdmrPtr, (Redeemer, ExUnits))]
  } deriving (Show, Generic)
instance ToExpr TxWitnesses
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
  } deriving (Show, Generic)
instance ToExpr TxBody
type Coin  = Integer
type Addr  = Integer

type TxId  = Integer
type Ix    = Integer
type Epoch = Integer

type AuxiliaryData = ()
type DataHash      = ()
type Datum         = ()
type Redeemer      = ()

type TxIn  = (TxId, Ix)
type TxOut = (Addr, (Coin, Maybe DataHash))
type UTxO  = [(TxIn, TxOut)]
type Hash  = Integer

data Tag     = Spend | Mint | Cert | Rewrd | Vote | Propose deriving (Show, Generic)
instance ToExpr Tag
type RdmrPtr = (Tag, Ix)
type ExUnits = (Integer, Integer)
data AgdaEmpty deriving (Show, Generic)
instance ToExpr AgdaEmpty
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
-- Ledger.Foreign.LedgerTypes.TxIn
d_TxIn_32 :: ()
d_TxIn_32 = erased
-- Ledger.Foreign.LedgerTypes.TxOut
d_TxOut_34 :: ()
d_TxOut_34 = erased
-- Ledger.Foreign.LedgerTypes.UTxO
d_UTxO_36 :: ()
d_UTxO_36 = erased
-- Ledger.Foreign.LedgerTypes.Hash
d_Hash_38 :: ()
d_Hash_38 = erased
-- Ledger.Foreign.LedgerTypes.Tag
d_Tag_40 = ()
type T_Tag_40 = Tag
pattern C_Spend_42 = Spend
pattern C_Mint_44 = Mint
pattern C_Cert_46 = Cert
pattern C_Rewrd_48 = Rewrd
pattern C_Vote_50 = Vote
pattern C_Propose_52 = Propose
check_Spend_42 :: T_Tag_40
check_Spend_42 = Spend
check_Mint_44 :: T_Tag_40
check_Mint_44 = Mint
check_Cert_46 :: T_Tag_40
check_Cert_46 = Cert
check_Rewrd_48 :: T_Tag_40
check_Rewrd_48 = Rewrd
check_Vote_50 :: T_Tag_40
check_Vote_50 = Vote
check_Propose_52 :: T_Tag_40
check_Propose_52 = Propose
cover_Tag_40 :: Tag -> ()
cover_Tag_40 x
  = case x of
      Spend -> ()
      Mint -> ()
      Cert -> ()
      Rewrd -> ()
      Vote -> ()
      Propose -> ()
-- Ledger.Foreign.LedgerTypes.RdmrPtr
d_RdmrPtr_54 :: ()
d_RdmrPtr_54 = erased
-- Ledger.Foreign.LedgerTypes.ExUnits
d_ExUnits_56 :: ()
d_ExUnits_56 = erased
-- Ledger.Foreign.LedgerTypes.TxBody
d_TxBody_58 = ()
type T_TxBody_58 = TxBody
pattern C_TxBody'46'constructor_547 a0 a1 a2 a3 a4 a5 a6 a7 a8 = MkTxBody a0 a1 a2 a3 a4 a5 a6 a7 a8
check_TxBody'46'constructor_547 ::
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
  T_TxBody_58
check_TxBody'46'constructor_547 = MkTxBody
cover_TxBody_58 :: TxBody -> ()
cover_TxBody_58 x
  = case x of
      MkTxBody _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxBody.txins
d_txins_78 ::
  T_TxBody_58 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_txins_78 v0
  = case coe v0 of
      C_TxBody'46'constructor_547 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txouts
d_txouts_80 ::
  T_TxBody_58 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer
           (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))]
d_txouts_80 v0
  = case coe v0 of
      C_TxBody'46'constructor_547 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txfee
d_txfee_82 :: T_TxBody_58 -> Integer
d_txfee_82 v0
  = case coe v0 of
      C_TxBody'46'constructor_547 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txvldt
d_txvldt_84 ::
  T_TxBody_58 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny (Maybe Integer) (Maybe Integer)
d_txvldt_84 v0
  = case coe v0 of
      C_TxBody'46'constructor_547 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txsize
d_txsize_86 :: T_TxBody_58 -> Integer
d_txsize_86 v0
  = case coe v0 of
      C_TxBody'46'constructor_547 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.txid
d_txid_88 :: T_TxBody_58 -> Integer
d_txid_88 v0
  = case coe v0 of
      C_TxBody'46'constructor_547 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.collateral
d_collateral_90 ::
  T_TxBody_58 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_collateral_90 v0
  = case coe v0 of
      C_TxBody'46'constructor_547 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.reqSigHash
d_reqSigHash_92 :: T_TxBody_58 -> [Integer]
d_reqSigHash_92 v0
  = case coe v0 of
      C_TxBody'46'constructor_547 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxBody.scriptIntHash
d_scriptIntHash_94 :: T_TxBody_58 -> Maybe Integer
d_scriptIntHash_94 v0
  = case coe v0 of
      C_TxBody'46'constructor_547 v1 v2 v3 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses
d_TxWitnesses_96 = ()
type T_TxWitnesses_96 = TxWitnesses
pattern C_TxWitnesses'46'constructor_829 a0 a1 a2 a3 = MkTxWitnesses a0 a1 a2 a3
check_TxWitnesses'46'constructor_829 ::
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
          () () T_Tag_40 Integer)
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
          () () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
          (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
             () () Integer Integer))) ->
  T_TxWitnesses_96
check_TxWitnesses'46'constructor_829 = MkTxWitnesses
cover_TxWitnesses_96 :: TxWitnesses -> ()
cover_TxWitnesses_96 x
  = case x of
      MkTxWitnesses _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.TxWitnesses.vkSigs
d_vkSigs_106 ::
  T_TxWitnesses_96 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny Integer Integer]
d_vkSigs_106 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_829 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.scripts
d_scripts_108 :: T_TxWitnesses_96 -> [T_Empty_6]
d_scripts_108 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_829 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txdats
d_txdats_110 ::
  T_TxWitnesses_96 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
     MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6]
d_txdats_110 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_829 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.TxWitnesses.txrdmrs
d_txrdmrs_112 ::
  T_TxWitnesses_96 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny T_Tag_40 Integer)
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer Integer))]
d_txrdmrs_112 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_829 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx
d_Tx_114 = ()
type T_Tx_114 = Tx
pattern C_Tx'46'constructor_917 a0 a1 a2 = MkTx a0 a1 a2
check_Tx'46'constructor_917 ::
  T_TxBody_58 ->
  T_TxWitnesses_96 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_Tx_114
check_Tx'46'constructor_917 = MkTx
cover_Tx_114 :: Tx -> ()
cover_Tx_114 x
  = case x of
      MkTx _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.Tx.body
d_body_122 :: T_Tx_114 -> T_TxBody_58
d_body_122 v0
  = case coe v0 of
      C_Tx'46'constructor_917 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.wits
d_wits_124 :: T_Tx_114 -> T_TxWitnesses_96
d_wits_124 v0
  = case coe v0 of
      C_Tx'46'constructor_917 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.Tx.txAD
d_txAD_126 ::
  T_Tx_114 -> Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_126 v0
  = case coe v0 of
      C_Tx'46'constructor_917 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams
d_PParams_128 = ()
type T_PParams_128 = PParams
pattern C_PParams'46'constructor_1633 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 = MkPParams a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23
check_PParams'46'constructor_1633 ::
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
  Integer -> Integer -> T_PParams_128
check_PParams'46'constructor_1633 = MkPParams
cover_PParams_128 :: PParams -> ()
cover_PParams_128 x
  = case x of
      MkPParams _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -> ()
-- Ledger.Foreign.LedgerTypes.PParams.a
d_a_178 :: T_PParams_128 -> Integer
d_a_178 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.b
d_b_180 :: T_PParams_128 -> Integer
d_b_180 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockSize
d_maxBlockSize_182 :: T_PParams_128 -> Integer
d_maxBlockSize_182 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxSize
d_maxTxSize_184 :: T_PParams_128 -> Integer
d_maxTxSize_184 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxHeaderSize
d_maxHeaderSize_186 :: T_PParams_128 -> Integer
d_maxHeaderSize_186 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxValSize
d_maxValSize_188 :: T_PParams_128 -> Integer
d_maxValSize_188 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minUTxOValue
d_minUTxOValue_190 :: T_PParams_128 -> Integer
d_minUTxOValue_190 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.poolDeposit
d_poolDeposit_192 :: T_PParams_128 -> Integer
d_poolDeposit_192 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.Emax
d_Emax_194 :: T_PParams_128 -> Integer
d_Emax_194 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.pv
d_pv_196 ::
  T_PParams_128 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_pv_196 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.votingThresholds
d_votingThresholds_198 ::
  T_PParams_128 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_votingThresholds_198 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionLifetime
d_govActionLifetime_200 :: T_PParams_128 -> Integer
d_govActionLifetime_200 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.govActionDeposit
d_govActionDeposit_202 :: T_PParams_128 -> Integer
d_govActionDeposit_202 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepDeposit
d_drepDeposit_204 :: T_PParams_128 -> Integer
d_drepDeposit_204 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.drepActivity
d_drepActivity_206 :: T_PParams_128 -> Integer
d_drepActivity_206 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMinSize
d_ccMinSize_208 :: T_PParams_128 -> Integer
d_ccMinSize_208 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.ccMaxTermLength
d_ccMaxTermLength_210 :: T_PParams_128 -> Integer
d_ccMaxTermLength_210 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.minimumAVS
d_minimumAVS_212 :: T_PParams_128 -> Integer
d_minimumAVS_212 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.costmdls
d_costmdls_214 :: T_PParams_128 -> T_Empty_6
d_costmdls_214 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.prices
d_prices_216 ::
  T_PParams_128 -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_216 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxTxExUnits
d_maxTxExUnits_218 ::
  T_PParams_128 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxTxExUnits_218 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxBlockExUnits
d_maxBlockExUnits_220 ::
  T_PParams_128 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny Integer Integer
d_maxBlockExUnits_220 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_222 :: T_PParams_128 -> Integer
d_coinsPerUTxOWord_222 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.PParams.maxCollateralInputs
d_maxCollateralInputs_224 :: T_PParams_128 -> Integer
d_maxCollateralInputs_224 v0
  = case coe v0 of
      C_PParams'46'constructor_1633 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv
d_UTxOEnv_226 = ()
type T_UTxOEnv_226 = UTxOEnv
pattern C_UTxOEnv'46'constructor_2863 a0 a1 = MkUTxOEnv a0 a1
check_UTxOEnv'46'constructor_2863 ::
  Integer -> T_PParams_128 -> T_UTxOEnv_226
check_UTxOEnv'46'constructor_2863 = MkUTxOEnv
cover_UTxOEnv_226 :: UTxOEnv -> ()
cover_UTxOEnv_226 x
  = case x of
      MkUTxOEnv _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOEnv.slot
d_slot_232 :: T_UTxOEnv_226 -> Integer
d_slot_232 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_2863 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOEnv.pparams
d_pparams_234 :: T_UTxOEnv_226 -> T_PParams_128
d_pparams_234 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_2863 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState
d_UTxOState_236 = ()
type T_UTxOState_236 = UTxOState
pattern C_UTxOState'46'constructor_2905 a0 a1 = MkUTxOState a0 a1
check_UTxOState'46'constructor_2905 ::
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
  Integer -> T_UTxOState_236
check_UTxOState'46'constructor_2905 = MkUTxOState
cover_UTxOState_236 :: UTxOState -> ()
cover_UTxOState_236 x
  = case x of
      MkUTxOState _ _ -> ()
-- Ledger.Foreign.LedgerTypes.UTxOState.utxo
d_utxo_242 ::
  T_UTxOState_236 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer
        (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
           AgdaAny AgdaAny Integer
           (Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6)))]
d_utxo_242 v0
  = case coe v0 of
      C_UTxOState'46'constructor_2905 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.LedgerTypes.UTxOState.fees
d_fees_244 :: T_UTxOState_236 -> Integer
d_fees_244 v0
  = case coe v0 of
      C_UTxOState'46'constructor_2905 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
