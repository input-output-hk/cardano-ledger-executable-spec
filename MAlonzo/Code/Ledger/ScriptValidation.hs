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

module MAlonzo.Code.Ledger.ScriptValidation where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.MOf
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.CostModel
d_CostModel_64 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_64 = erased
-- _.DCert
d_DCert_68 a0 = ()
-- _.T
d_T_78 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_78 = erased
-- _.THash
d_THash_80 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_80 = erased
-- _.Datum
d_Datum_84 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Datum_84 = erased
-- _.Dec-isScript
d_Dec'45'isScript_88 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_88 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_88
du_Dec'45'isScript_88 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_88
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
-- _.ExUnits
d_ExUnits_180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_180 = erased
-- _.GovProposal
d_GovProposal_200 a0 = ()
-- _.THash
d_THash_230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_230 = erased
-- _.Language
d_Language_236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_236 = erased
-- _.PlutusScript
d_PlutusScript_264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_264 = erased
-- _.PParams
d_PParams_274 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_298 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_RdmrPtr_298 = erased
-- _.Redeemer
d_Redeemer_300 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Redeemer_300 = erased
-- _.RwdAddr
d_RwdAddr_314 a0 a1 a2 a3 = ()
-- _.Script
d_Script_322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_322 = erased
-- _.ScriptHash
d_ScriptHash_330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_330 = erased
-- _.Slot
d_Slot_340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_340 = erased
-- _.Tx
d_Tx_370 a0 = ()
-- _.TxBody
d_TxBody_372 a0 = ()
-- _.TxIn
d_TxIn_376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_376 = erased
-- _.TxOut
d_TxOut_378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_378 = erased
-- _.UTxO
d_UTxO_384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_384 = erased
-- _.Value
d_Value_402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_402 = erased
-- _.Voter
d_Voter_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_408 = erased
-- _.Wdrl
d_Wdrl_410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_410 = erased
-- _.evalTimelock
d_evalTimelock_470 a0 a1 a2 a3 = ()
-- Ledger.ScriptValidation.ScriptPurpose
d_ScriptPurpose_1482 a0 a1 = ()
data T_ScriptPurpose_1482
  = C_Cert_1484 MAlonzo.Code.Ledger.Certs.T_DCert_718 |
    C_Rwrd_1486 MAlonzo.Code.Ledger.Address.T_RwdAddr_58 |
    C_Mint_1488 AgdaAny |
    C_Spend_1490 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_1492 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Propose_1494 MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650
-- Ledger.ScriptValidation.rdptr
d_rdptr_1496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  T_ScriptPurpose_1482 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_1496 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_1484 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Cert_10) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1466
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txcerts_2496 (coe v2)))
      C_Rwrd_1486 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Rewrd_12) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1468
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txwdrls_2498 (coe v2)))
      C_Mint_1488 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Mint_8) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1472
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494 (coe v1)) v4
                (coe
                   MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0))
                   (MAlonzo.Code.Ledger.Transaction.d_mint_2492 (coe v2))))
      C_Spend_1490 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Spend_6) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1470
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txins_2484 (coe v2)))
      C_Vote_1492 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Vote_14) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1474
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494 (coe v1)) v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.GovernanceActions.d_voter_644 (coe v5))
                   (MAlonzo.Code.Ledger.Transaction.d_txvote_2500 (coe v2))))
      C_Propose_1494 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Propose_16) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1476
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txprop_2502 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.indexedRdmrs
d_indexedRdmrs_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  T_ScriptPurpose_1482 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_1570 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_36
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1542
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2538
                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2554 (coe v2)))
              (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                       (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1072 (coe v0))))
                 (coe v4)
                 (let v5
                        = MAlonzo.Code.Axiom.Set.d_th_1430
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v5
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2538
                             (coe MAlonzo.Code.Ledger.Transaction.d_wits_2554 (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_1496 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v2))
         (coe v3))
-- Ledger.ScriptValidation.getDatum
d_getDatum_1604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1482 -> [AgdaAny]
d_getDatum_1604 v0 ~v1 v2 v3 v4 = du_getDatum_1604 v0 v2 v3 v4
du_getDatum_1604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1482 -> [AgdaAny]
du_getDatum_1604 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v3 of
         C_Spend_1490 v5
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                (coe
                   (\ v6 ->
                      case coe v6 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                          -> case coe v8 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                 -> case coe v10 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                        -> case coe v11 of
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13
                                               -> case coe v13 of
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                      -> coe
                                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                                                           (coe v14)
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                      -> coe
                                                           MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_306)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1542
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2536
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2554
                                                                    (coe v1)))
                                                              (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased
                                                                    (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                                                                                   (coe v0)))))))
                                                                 (coe v14)
                                                                 (let v15
                                                                        = MAlonzo.Code.Axiom.Set.d_th_1430
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                                                                       v15
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_txdats_2536
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_wits_2554
                                                                                (coe v1))))))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                               -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               _ -> MAlonzo.RTE.mazUnreachableError
                        _ -> MAlonzo.RTE.mazUnreachableError))
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1542
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe v2) (coe v5)
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                         (coe
                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0))
                            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1072 (coe v0))))
                      (coe v5)
                      (let v6
                             = MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v6
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2))))))
         _ -> coe v4)
-- Ledger.ScriptValidation.TxInfo
d_TxInfo_1644 a0 a1 = ()
data T_TxInfo_1644
  = C_TxInfo'46'constructor_15883 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  [MAlonzo.Code.Ledger.Certs.T_DCert_718]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.ScriptValidation.TxInfo.realizedInputs
d_realizedInputs_1666 ::
  T_TxInfo_1644 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_1666 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15883 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txouts
d_txouts_1668 ::
  T_TxInfo_1644 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1668 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15883 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.fee
d_fee_1670 :: T_TxInfo_1644 -> AgdaAny
d_fee_1670 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15883 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.mint
d_mint_1672 :: T_TxInfo_1644 -> AgdaAny
d_mint_1672 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15883 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txcerts
d_txcerts_1674 ::
  T_TxInfo_1644 -> [MAlonzo.Code.Ledger.Certs.T_DCert_718]
d_txcerts_1674 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15883 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txwdrls
d_txwdrls_1676 ::
  T_TxInfo_1644 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1676 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15883 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txvldt
d_txvldt_1678 ::
  T_TxInfo_1644 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1678 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15883 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.vkKey
d_vkKey_1680 :: T_TxInfo_1644 -> [AgdaAny]
d_vkKey_1680 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15883 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txdats
d_txdats_1682 ::
  T_TxInfo_1644 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_1682 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15883 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txid
d_txid_1684 :: T_TxInfo_1644 -> AgdaAny
d_txid_1684 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15883 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.txInfo
d_txInfo_1686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 -> T_TxInfo_1644
d_txInfo_1686 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_1686 v0 v4 v5
du_txInfo_1686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 -> T_TxInfo_1644
du_txInfo_1686 v0 v1 v2
  = coe
      C_TxInfo'46'constructor_15883
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1246
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1072 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txins_2484
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txouts_2488
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txfee_2490
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_mint_2492
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txcerts_2496
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2498
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvldt_2494
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2518
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txdats_2536
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2554 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_2514
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v2)))
-- Ledger.ScriptValidation.DelegateOrDeReg
d_DelegateOrDeReg_1806 a0 a1 a2 = ()
data T_DelegateOrDeReg_1806
  = C_delegate_1816 | C_dereg_1820 | C_regdrep_1828 |
    C_deregdrep_1832
-- Ledger.ScriptValidation.Dec-DelegateOrDeReg
d_Dec'45'DelegateOrDeReg_1834 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_718 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DelegateOrDeReg_1834 ~v0 ~v1 v2
  = du_Dec'45'DelegateOrDeReg_1834 v2
du_Dec'45'DelegateOrDeReg_1834 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_718 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DelegateOrDeReg_1834 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_720 v1 v2 v3 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v5 v6 -> coe C_delegate_1816))
         MAlonzo.Code.Ledger.Certs.C_dereg_722 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v2 -> coe C_dereg_1820))
         MAlonzo.Code.Ledger.Certs.C_regpool_724 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Certs.C_retirepool_726 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Certs.C_regdrep_728 v1 v2 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v4 v5 -> coe C_regdrep_1828))
         MAlonzo.Code.Ledger.Certs.C_deregdrep_730 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v2 -> coe C_deregdrep_1832))
         MAlonzo.Code.Ledger.Certs.C_ccreghot_732 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.ScriptValidation.UTxOSH
d_UTxOSH_1856 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 -> ()
d_UTxOSH_1856 = erased
-- Ledger.ScriptValidation.scriptOutWithHash
d_scriptOutWithHash_1858 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutWithHash_1858 ~v0 ~v1 ~v2 v3
  = du_scriptOutWithHash_1858 v3
du_scriptOutWithHash_1858 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutWithHash_1858 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Interface.ToBool.du_if_then_else__46
             (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
             (coe
                MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
                (coe MAlonzo.Code.Ledger.Address.du_payCred_90 (coe v1)))
             (coe
                (\ v3 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                        (coe
                           MAlonzo.Code.Ledger.Address.du_getScriptHash_148 (coe v1)
                           (coe v3)))))
             (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.scriptOutsWithHash
d_scriptOutsWithHash_1868 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutsWithHash_1868 ~v0 ~v1 v2
  = du_scriptOutsWithHash_1868 v2
du_scriptOutsWithHash_1868 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutsWithHash_1868 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v1 v2 -> coe du_scriptOutWithHash_1858 v2) (coe v0)
-- Ledger.ScriptValidation.spendScripts
d_spendScripts_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_spendScripts_1872 v0 ~v1 v2 v3 = du_spendScripts_1872 v0 v2 v3
du_spendScripts_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_spendScripts_1872 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1592
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0))
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1072 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_524
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532) (coe v2)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe C_Spend_1490 (coe v1))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1538
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1430
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe v2) (coe v1) (coe v3))))))
      (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.ScriptValidation.rwdScripts
d_rwdScripts_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwdScripts_1880 ~v0 ~v1 v2 = du_rwdScripts_1880 v2
du_rwdScripts_1880 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwdScripts_1880 v0
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
         (coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)))
      (coe
         (\ v1 ->
            seq
              (coe v1)
              (case coe v0 of
                 MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_997 v2 v3
                   -> case coe v3 of
                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe C_Rwrd_1486 (coe v0)) (coe v4))
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.ScriptValidation.certScripts
d_certScripts_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_718 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certScripts_1888 ~v0 ~v1 v2 = du_certScripts_1888 v2
du_certScripts_1888 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_718 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certScripts_1888 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Certs.C_delegate_720 v1 v2 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1484 (coe v0)) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_dereg_722 v1
        -> case coe v1 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1484 (coe v0)) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_regpool_724 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Certs.C_retirepool_726 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.Certs.C_regdrep_728 v1 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1484 (coe v0)) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_deregdrep_730 v1
        -> case coe v1 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Cert_1484 (coe v0)) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Certs.C_ccreghot_732 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.scriptsNeeded
d_scriptsNeeded_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_scriptsNeeded_1948 v0 ~v1 v2 v3 = du_scriptsNeeded_1948 v0 v2 v3
du_scriptsNeeded_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_scriptsNeeded_1948 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_558
         (MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              du_spendScripts_1872 (coe v0) (coe v3)
              (coe du_scriptOutsWithHash_1868 (coe v1)))
         (MAlonzo.Code.Ledger.Transaction.d_txins_2484 (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_mapPartial_558
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe du_rwdScripts_1880)
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_524
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2498 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_558
               (MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe du_certScripts_1888)
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2496 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_380
               (MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe C_Mint_1488 (coe v3)) (coe v3))
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0))
                  (MAlonzo.Code.Ledger.Transaction.d_mint_2492 (coe v2))))))
-- Ledger.ScriptValidation.valContext
d_valContext_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_TxInfo_1644 -> T_ScriptPurpose_1482 -> AgdaAny
d_valContext_2006 v0 ~v1 v2 v3 = du_valContext_2006 v0 v2 v3
du_valContext_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_TxInfo_1644 -> T_ScriptPurpose_1482 -> AgdaAny
du_valContext_2006 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_220
      (MAlonzo.Code.Ledger.Script.d_ps_412
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs'
d_collectPhaseTwoScriptInputs''_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collectPhaseTwoScriptInputs''_2012 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                     (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0)))
                     v7
                     (coe
                        MAlonzo.Code.Axiom.Set.du_map_380
                        (MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                           (coe
                              MAlonzo.Code.Ledger.Transaction.du_m_2672 (coe v0) (coe v3)
                              (coe v4)))) in
           coe
             (case coe v8 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                  -> if coe v9
                       then case coe v10 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                -> let v12
                                         = coe
                                             MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1538
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.du_m_2672 (coe v0)
                                                (coe v3) (coe v4))
                                             (coe v7) (coe v11) in
                                   coe
                                     (let v13
                                            = coe
                                                MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v12) in
                                      coe
                                        (let v14
                                               = coe
                                                   MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                                                   (coe
                                                      (\ v14 ->
                                                         coe
                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1542
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2538
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2554
                                                                 (coe v3)))
                                                           (coe v14)
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1072
                                                                       (coe v0))))
                                                              (coe v14)
                                                              (let v15
                                                                     = MAlonzo.Code.Axiom.Set.d_th_1430
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                                                                    v15
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2538
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_wits_2554
                                                                             (coe v3)))))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                   (let v14
                                                          = MAlonzo.Code.Ledger.Transaction.d_body_2552
                                                              (coe v3) in
                                                    coe
                                                      (case coe v6 of
                                                         C_Cert_1484 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Cert_10)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1466
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txcerts_2496
                                                                      (coe v14)))
                                                         C_Rwrd_1486 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Rewrd_12)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1468
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txwdrls_2498
                                                                      (coe v14)))
                                                         C_Mint_1488 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Mint_8)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1472
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Ledger.Transaction.d_mint_2492
                                                                         (coe v14))))
                                                         C_Spend_1490 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Spend_6)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1470
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txins_2484
                                                                      (coe v14)))
                                                         C_Vote_1492 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Vote_14)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1474
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494
                                                                      (coe v1))
                                                                   v15
                                                                   (coe
                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                      () erased () erased
                                                                      (\ v16 ->
                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_voter_644
                                                                           (coe v16))
                                                                      (MAlonzo.Code.Ledger.Transaction.d_txvote_2500
                                                                         (coe v14))))
                                                         C_Propose_1494 v15
                                                           -> coe
                                                                MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                (\ v16 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.C_Propose_16)
                                                                     (coe v16))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1476
                                                                   (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494
                                                                      (coe v1))
                                                                   v15
                                                                   (MAlonzo.Code.Ledger.Transaction.d_txprop_2502
                                                                      (coe v14)))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)) in
                                         coe
                                           (case coe v13 of
                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v15
                                                -> case coe v14 of
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v16
                                                       -> case coe v16 of
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                              -> coe
                                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v12)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                                            (coe
                                                                               du_getDatum_1604
                                                                               (coe v0) (coe v3)
                                                                               (coe v4) (coe v6))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                  (coe
                                                                                     du_valContext_2006
                                                                                     (coe v0)
                                                                                     (coe
                                                                                        du_txInfo_1686
                                                                                        (coe v0)
                                                                                        (coe v4)
                                                                                        (coe v3))
                                                                                     (coe v6))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe v18)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.PParams.d_costmdls_320
                                                                               (coe v2)))))
                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                     _ -> coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                              _ -> coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else (let v11
                                   = seq
                                       (coe v10)
                                       (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased) in
                             coe
                               (case coe v11 of
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                    -> let v13
                                             = coe
                                                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1538
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.du_m_2672
                                                    (coe v0) (coe v3) (coe v4))
                                                 (coe v7) (coe v12) in
                                       coe
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Data.Sum.du_isInj'8322'_30
                                                    (coe v13) in
                                          coe
                                            (let v15
                                                   = coe
                                                       MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                                                       (coe
                                                          (\ v15 ->
                                                             coe
                                                               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1542
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2538
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_wits_2554
                                                                     (coe v3)))
                                                               (coe v15)
                                                               (coe
                                                                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                     erased
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1072
                                                                           (coe v0))))
                                                                  (coe v15)
                                                                  (let v16
                                                                         = MAlonzo.Code.Axiom.Set.d_th_1430
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                                                                        v16
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2538
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2554
                                                                                 (coe v3)))))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                       (let v15
                                                              = MAlonzo.Code.Ledger.Transaction.d_body_2552
                                                                  (coe v3) in
                                                        coe
                                                          (case coe v6 of
                                                             C_Cert_1484 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Cert_10)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1466
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txcerts_2496
                                                                          (coe v15)))
                                                             C_Rwrd_1486 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Rewrd_12)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1468
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txwdrls_2498
                                                                          (coe v15)))
                                                             C_Mint_1488 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Mint_8)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1472
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990
                                                                             (coe v0))
                                                                          (MAlonzo.Code.Ledger.Transaction.d_mint_2492
                                                                             (coe v15))))
                                                             C_Spend_1490 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Spend_6)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1470
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txins_2484
                                                                          (coe v15)))
                                                             C_Vote_1492 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Vote_14)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1474
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494
                                                                          (coe v1))
                                                                       v16
                                                                       (coe
                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                                                          () erased () erased
                                                                          (\ v17 ->
                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_voter_644
                                                                               (coe v17))
                                                                          (MAlonzo.Code.Ledger.Transaction.d_txvote_2500
                                                                             (coe v15))))
                                                             C_Propose_1494 v16
                                                               -> coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                                    (\ v17 ->
                                                                       coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.C_Propose_16)
                                                                         (coe v17))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1476
                                                                       (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494
                                                                          (coe v1))
                                                                       v16
                                                                       (MAlonzo.Code.Ledger.Transaction.d_txprop_2502
                                                                          (coe v15)))
                                                             _ -> MAlonzo.RTE.mazUnreachableError)) in
                                             coe
                                               (case coe v14 of
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v16
                                                    -> case coe v15 of
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v17
                                                           -> case coe v17 of
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                  -> coe
                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v13)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                                                (coe
                                                                                   du_getDatum_1604
                                                                                   (coe v0) (coe v3)
                                                                                   (coe v4)
                                                                                   (coe v6))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe v18)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         du_valContext_2006
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            du_txInfo_1686
                                                                                            (coe v0)
                                                                                            (coe v4)
                                                                                            (coe
                                                                                               v3))
                                                                                         (coe v6))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe v19)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.PParams.d_costmdls_320
                                                                                   (coe v2)))))
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         _ -> coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                  _ -> coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                    -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_2088 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (d_collectPhaseTwoScriptInputs''_2012
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_scriptsNeeded_1948 (coe v0) (coe v4)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v3)))
-- Ledger.ScriptValidation.⟦_⟧,_,_,_
d_'10214'_'10215''44'_'44'_'44'__2096 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_'10214'_'10215''44'_'44'_'44'__2096 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1496 v0 v2 v1 v3 v4
-- Ledger.ScriptValidation.evalScripts
d_evalScripts_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_2106 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> case coe v6 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> coe
                                  seq (coe v10)
                                  (coe
                                     MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46
                                        (coe ())
                                        (coe
                                           MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_280
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2518
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2552
                                                 (coe v2)))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txvldt_2494
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2552
                                                 (coe v2)))
                                           (coe v8)))
                                     (coe d_evalScripts_2106 (coe v0) (coe v1) (coe v2) (coe v5)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                         (coe
                                            MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1496 v1 v12
                                            v8 v11 v9)
                                         (coe
                                            d_evalScripts_2106 (coe v0) (coe v1) (coe v2) (coe v5))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
