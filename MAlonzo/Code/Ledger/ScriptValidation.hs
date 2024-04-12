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
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
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
d_CostModel_62 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_62 = erased
-- _.DCert
d_DCert_66 a0 = ()
-- _.T
d_T_76 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_76 = erased
-- _.THash
d_THash_78 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_78 = erased
-- _.Datum
d_Datum_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Datum_82 = erased
-- _.Dec-isScript
d_Dec'45'isScript_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_86 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_86
du_Dec'45'isScript_86 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_86
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
-- _.ExUnits
d_ExUnits_176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_176 = erased
-- _.GovProposal
d_GovProposal_196 a0 = ()
-- _.THash
d_THash_226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_226 = erased
-- _.Language
d_Language_232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_232 = erased
-- _.PlutusScript
d_PlutusScript_258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_258 = erased
-- _.PParams
d_PParams_268 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_RdmrPtr_292 = erased
-- _.Redeemer
d_Redeemer_294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Redeemer_294 = erased
-- _.RwdAddr
d_RwdAddr_308 a0 a1 a2 a3 = ()
-- _.Script
d_Script_316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_316 = erased
-- _.ScriptHash
d_ScriptHash_324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_324 = erased
-- _.Slot
d_Slot_334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_334 = erased
-- _.Tx
d_Tx_364 a0 = ()
-- _.TxBody
d_TxBody_366 a0 = ()
-- _.TxIn
d_TxIn_370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_370 = erased
-- _.TxOut
d_TxOut_372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_372 = erased
-- _.UTxO
d_UTxO_376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_376 = erased
-- _.Value
d_Value_392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_392 = erased
-- _.Voter
d_Voter_398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_398 = erased
-- _.Wdrl
d_Wdrl_400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_400 = erased
-- _.evalTimelock
d_evalTimelock_456 a0 a1 a2 a3 = ()
-- Ledger.ScriptValidation.ScriptPurpose
d_ScriptPurpose_1398 a0 a1 = ()
data T_ScriptPurpose_1398
  = C_Cert_1400 MAlonzo.Code.Ledger.Deleg.T_DCert_634 |
    C_Rwrd_1402 MAlonzo.Code.Ledger.Address.T_RwdAddr_58 |
    C_Mint_1404 AgdaAny |
    C_Spend_1406 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_1408 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Propose_1410 MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564
-- Ledger.ScriptValidation.rdptr
d_rdptr_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 ->
  T_ScriptPurpose_1398 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_1412 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_1400 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Cert_10) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1382
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1410 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txcerts_2342 (coe v2)))
      C_Rwrd_1402 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Rewrd_12) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1384
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1410 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txwdrls_2344 (coe v2)))
      C_Mint_1404 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Mint_8) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1388
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1410 (coe v1)) v4
                (coe
                   MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
                   (MAlonzo.Code.Ledger.Transaction.d_mint_2338 (coe v2))))
      C_Spend_1406 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Spend_6) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1386
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1410 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txins_2330 (coe v2)))
      C_Vote_1408 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Vote_14) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1390
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1410 (coe v1)) v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.GovernanceActions.d_voter_558 (coe v5))
                   (MAlonzo.Code.Ledger.Transaction.d_txvote_2346 (coe v2))))
      C_Propose_1410 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Propose_16) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1392
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1410 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txprop_2348 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.indexedRdmrs
d_indexedRdmrs_1486 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  T_ScriptPurpose_1398 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_1486 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_36
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1358
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2384
                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2400 (coe v2)))
              (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                       (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0))))
                 (coe v4)
                 (let v5
                        = MAlonzo.Code.Axiom.Set.d_th_1430
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_310 v5
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_480
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2384
                             (coe MAlonzo.Code.Ledger.Transaction.d_wits_2400 (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_1412 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2))
         (coe v3))
-- Ledger.ScriptValidation.getDatum
d_getDatum_1520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1398 -> [AgdaAny]
d_getDatum_1520 v0 ~v1 v2 v3 v4 = du_getDatum_1520 v0 v2 v3 v4
du_getDatum_1520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1398 -> [AgdaAny]
du_getDatum_1520 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v3 of
         C_Spend_1406 v5
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
                                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1358
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2382
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2400
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
                                                                                MAlonzo.Code.Ledger.Script.d_ps_414
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                                   (coe v0)))))))
                                                                 (coe v14)
                                                                 (let v15
                                                                        = MAlonzo.Code.Axiom.Set.d_th_1430
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_310
                                                                       v15
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_480
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_txdats_2382
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_wits_2400
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
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1358
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
                            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0))
                            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0))))
                      (coe v5)
                      (let v6
                             = MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_310 v6
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_480 (coe v2))))))
         _ -> coe v4)
-- Ledger.ScriptValidation.TxInfo
d_TxInfo_1560 a0 a1 = ()
data T_TxInfo_1560
  = C_TxInfo'46'constructor_15981 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.ScriptValidation.TxInfo.realizedInputs
d_realizedInputs_1582 ::
  T_TxInfo_1560 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_1582 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15981 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txouts
d_txouts_1584 ::
  T_TxInfo_1560 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1584 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15981 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.fee
d_fee_1586 :: T_TxInfo_1560 -> AgdaAny
d_fee_1586 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15981 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.mint
d_mint_1588 :: T_TxInfo_1560 -> AgdaAny
d_mint_1588 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15981 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txcerts
d_txcerts_1590 ::
  T_TxInfo_1560 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
d_txcerts_1590 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15981 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txwdrls
d_txwdrls_1592 ::
  T_TxInfo_1560 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1592 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15981 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txvldt
d_txvldt_1594 ::
  T_TxInfo_1560 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1594 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15981 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.vkKey
d_vkKey_1596 :: T_TxInfo_1560 -> [AgdaAny]
d_vkKey_1596 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15981 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txdats
d_txdats_1598 ::
  T_TxInfo_1560 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_1598 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15981 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txid
d_txid_1600 :: T_TxInfo_1560 -> AgdaAny
d_txid_1600 v0
  = case coe v0 of
      C_TxInfo'46'constructor_15981 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.txInfo
d_txInfo_1602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> T_TxInfo_1560
d_txInfo_1602 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_1602 v0 v4 v5
du_txInfo_1602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> T_TxInfo_1560
du_txInfo_1602 v0 v1 v2
  = coe
      C_TxInfo'46'constructor_15981
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1120
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txins_2330
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txouts_2334
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txfee_2336
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_mint_2338
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txcerts_2342
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2344
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvldt_2340
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2364
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txdats_2382
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2400 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_2360
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2)))
-- Ledger.ScriptValidation.DelegateOrDeReg
d_DelegateOrDeReg_1722 a0 a1 a2 = ()
data T_DelegateOrDeReg_1722
  = C_delegate_1732 | C_dereg_1736 | C_regdrep_1744 |
    C_deregdrep_1748
-- Ledger.ScriptValidation.Dec-DelegateOrDeReg
d_Dec'45'DelegateOrDeReg_1750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DelegateOrDeReg_1750 ~v0 ~v1 v2
  = du_Dec'45'DelegateOrDeReg_1750 v2
du_Dec'45'DelegateOrDeReg_1750 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DelegateOrDeReg_1750 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Ledger.Deleg.C_delegate_636 v1 v2 v3 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v5 v6 -> coe C_delegate_1732))
         MAlonzo.Code.Ledger.Deleg.C_dereg_638 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v2 -> coe C_dereg_1736))
         MAlonzo.Code.Ledger.Deleg.C_regpool_640 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Deleg.C_retirepool_642 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Deleg.C_regdrep_644 v1 v2 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v4 v5 -> coe C_regdrep_1744))
         MAlonzo.Code.Ledger.Deleg.C_deregdrep_646 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (\ v2 -> coe C_deregdrep_1748))
         MAlonzo.Code.Ledger.Deleg.C_ccreghot_648 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.ScriptValidation.UTxOSH
d_UTxOSH_1772 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 -> ()
d_UTxOSH_1772 = erased
-- Ledger.ScriptValidation.scriptOutWithHash
d_scriptOutWithHash_1774 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutWithHash_1774 ~v0 ~v1 ~v2 v3
  = du_scriptOutWithHash_1774 v3
du_scriptOutWithHash_1774 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutWithHash_1774 v0
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
d_scriptOutsWithHash_1784 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutsWithHash_1784 ~v0 ~v1 v2
  = du_scriptOutsWithHash_1784 v2
du_scriptOutsWithHash_1784 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutsWithHash_1784 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1048
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v1 v2 -> coe du_scriptOutWithHash_1774 v2) (coe v0)
-- Ledger.ScriptValidation.spendScripts
d_spendScripts_1788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_spendScripts_1788 v0 ~v1 v2 v3 = du_spendScripts_1788 v0 v2 v3
du_spendScripts_1788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_spendScripts_1788 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1592
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0))
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_490
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498) (coe v2)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe C_Spend_1406 (coe v1))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1354
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1430
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe v2) (coe v1) (coe v3))))))
      (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.ScriptValidation.rwdScripts
d_rwdScripts_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwdScripts_1796 ~v0 ~v1 v2 = du_rwdScripts_1796 v2
du_rwdScripts_1796 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwdScripts_1796 v0
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
                 MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_1089 v2 v3
                   -> case coe v3 of
                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe C_Rwrd_1402 (coe v0)) (coe v4))
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.ScriptValidation.certScripts
d_certScripts_1804 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certScripts_1804 ~v0 ~v1 v2 = du_certScripts_1804 v2
du_certScripts_1804 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certScripts_1804 v0
  = let v1
          = coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
              (coe du_Dec'45'DelegateOrDeReg_1750 (coe v0)) in
    coe
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
           -> if coe v2
                then coe
                       seq (coe v3)
                       (case coe v0 of
                          MAlonzo.Code.Ledger.Deleg.C_delegate_636 v4 v5 v6 v7
                            -> case coe v4 of
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                                   -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                                   -> coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe C_Cert_1400 (coe v0)) (coe v8))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          MAlonzo.Code.Ledger.Deleg.C_dereg_638 v4
                            -> case coe v4 of
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                                   -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
                                   -> coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe C_Cert_1400 (coe v0)) (coe v5))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          MAlonzo.Code.Ledger.Deleg.C_regdrep_644 v4 v5 v6
                            -> case coe v4 of
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
                                   -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
                                   -> coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe C_Cert_1400 (coe v0)) (coe v7))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          MAlonzo.Code.Ledger.Deleg.C_deregdrep_646 v4
                            -> case coe v4 of
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                                   -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
                                   -> coe
                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                           (coe C_Cert_1400 (coe v0)) (coe v5))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError)
                else coe
                       seq (coe v3) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.ScriptValidation.scriptsNeeded
d_scriptsNeeded_1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_scriptsNeeded_1864 v0 ~v1 v2 v3 = du_scriptsNeeded_1864 v0 v2 v3
du_scriptsNeeded_1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_scriptsNeeded_1864 v0 v1 v2
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
              du_spendScripts_1788 (coe v0) (coe v3)
              (coe du_scriptOutsWithHash_1784 (coe v1)))
         (MAlonzo.Code.Ledger.Transaction.d_txins_2330 (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_mapPartial_558
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe du_rwdScripts_1796)
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_490
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_494)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2344 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_558
               (MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe du_certScripts_1804)
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2342 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_380
               (MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe C_Mint_1404 (coe v3)) (coe v3))
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
                  (MAlonzo.Code.Ledger.Transaction.d_mint_2338 (coe v2))))))
-- Ledger.ScriptValidation.valContext
d_valContext_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_TxInfo_1560 -> T_ScriptPurpose_1398 -> AgdaAny
d_valContext_1922 v0 ~v1 v2 v3 = du_valContext_1922 v0 v2 v3
du_valContext_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_TxInfo_1560 -> T_ScriptPurpose_1398 -> AgdaAny
du_valContext_1922 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_222
      (MAlonzo.Code.Ledger.Script.d_ps_414
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526 (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs'
d_collectPhaseTwoScriptInputs''_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collectPhaseTwoScriptInputs''_1928 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> let v8
                 = MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2490
                     (coe v0) (coe v7) (coe v3) (coe v4) in
           coe
             (case coe v8 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
                  -> let v10
                           = coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v9) in
                     coe
                       (let v11
                              = d_indexedRdmrs_1486 (coe v0) (coe v1) (coe v3) (coe v6) in
                        coe
                          (case coe v10 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                               -> case coe v11 of
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13
                                      -> case coe v13 of
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                             -> coe
                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v9)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                           (coe
                                                              du_getDatum_1520 (coe v0) (coe v3)
                                                              (coe v4) (coe v6))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                              (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    du_valContext_1922 (coe v0)
                                                                    (coe
                                                                       du_txInfo_1602 (coe v0)
                                                                       (coe v4) (coe v3))
                                                                    (coe v6))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v15)
                                                           (coe
                                                              MAlonzo.Code.Ledger.PParams.d_costmdls_314
                                                              (coe v2)))))
                                           _ -> MAlonzo.RTE.mazUnreachableError
                                    _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v8
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_2004 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (d_collectPhaseTwoScriptInputs''_1928
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_scriptsNeeded_1864 (coe v0) (coe v4)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v3)))
-- Ledger.ScriptValidation.⟦_⟧,_,_,_
d_'10214'_'10215''44'_'44'_'44'__2012 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_'10214'_'10215''44'_'44'_'44'__2012 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1412 v0 v2 v1 v3 v4
-- Ledger.ScriptValidation.evalScripts
d_evalScripts_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_2022 v0 v1 v2 v3
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
                                           MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_282
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2364
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2398
                                                 (coe v2)))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txvldt_2340
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2398
                                                 (coe v2)))
                                           (coe v8)))
                                     (coe d_evalScripts_2022 (coe v0) (coe v1) (coe v2) (coe v5)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                                         (coe
                                            MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1412 v1 v12
                                            v8 v11 v9)
                                         (coe
                                            d_evalScripts_2022 (coe v0) (coe v1) (coe v2) (coe v5))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
