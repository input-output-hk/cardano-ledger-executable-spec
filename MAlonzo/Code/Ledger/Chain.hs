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

module MAlonzo.Code.Ledger.Chain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- _.Credential
d_Credential_66 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_66 = erased
-- _.Slot
d_Slot_340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_340 = erased
-- _.Tx
d_Tx_370 a0 = ()
-- _.VDeleg
d_VDeleg_390 a0 = ()
-- _.epoch
d_epoch_454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_454 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
-- Ledger.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1534 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1812 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1832 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2542] ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1832 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1534 = erased
-- Ledger.Chain._.LEnv
d_LEnv_1542 a0 a1 = ()
-- Ledger.Chain._.LState
d_LState_1544 a0 a1 = ()
-- Ledger.Chain._.StakeDistrs
d_StakeDistrs_1604 a0 a1 = ()
-- Ledger.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1720 v0 ~v1
  = du_DecEq'45'DepositPurpose_1720 v0
du_DecEq'45'DepositPurpose_1720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1720 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1754 (coe v0)
-- Ledger.Chain._.DepositPurpose
d_DepositPurpose_1722 a0 a1 = ()
-- Ledger.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1864 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Chain._.NewEpochState
d_NewEpochState_1876 a0 a1 = ()
-- Ledger.Chain.ChainState
d_ChainState_1912 a0 a1 = ()
newtype T_ChainState_1912
  = C_ChainState'46'constructor_3255 MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1984
-- Ledger.Chain.ChainState.newEpochState
d_newEpochState_1916 ::
  T_ChainState_1912 -> MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1984
d_newEpochState_1916 v0
  = case coe v0 of
      C_ChainState'46'constructor_3255 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.Block
d_Block_1918 a0 a1 = ()
data T_Block_1918
  = C_Block'46'constructor_3313 [MAlonzo.Code.Ledger.Transaction.T_Tx_2542]
                                AgdaAny
-- Ledger.Chain.Block.ts
d_ts_1924 ::
  T_Block_1918 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2542]
d_ts_1924 v0
  = case coe v0 of
      C_Block'46'constructor_3313 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.Block.slot
d_slot_1926 :: T_Block_1918 -> AgdaAny
d_slot_1926 v0
  = case coe v0 of
      C_Block'46'constructor_3313 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.maybePurpose
d_maybePurpose_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Utxo.T_DepositPurpose_1676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_1938 v0 ~v1 v2 v3 v4
  = du_maybePurpose_1938 v0 v2 v3 v4
du_maybePurpose_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Utxo.T_DepositPurpose_1676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_1938 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1754 (coe v0))
                     v1 v4 in
           coe
             (case coe v6 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then coe
                              seq (coe v8)
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v3))
                       else coe
                              seq (coe v8) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.maybePurpose-prop
d_maybePurpose'45'prop_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Utxo.T_DepositPurpose_1676 ->
  MAlonzo.Code.Ledger.Utxo.T_DepositPurpose_1676 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_1970 = erased
-- Ledger.Chain.filterPurpose
d_filterPurpose_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Utxo.T_DepositPurpose_1676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_2012 v0 ~v1 v2 v3 = du_filterPurpose_2012 v0 v2 v3
du_filterPurpose_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Utxo.T_DepositPurpose_1676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_2012 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1166
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe du_maybePurpose_1938 (coe v0) (coe v1)) (coe v2))
-- Ledger.Chain.govActionDeposits
d_govActionDeposits_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_2026 v0 ~v1 v2
  = du_govActionDeposits_2026 v0 v2
du_govActionDeposits_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_2026 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__492
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_558
         (MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> case coe v4 of
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4167 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_997 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__76
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1542
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_voteDelegs_778
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.d_dState_818
                                            (coe
                                               MAlonzo.Code.Ledger.Ledger.d_certState_1844
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            erased
                                            (coe
                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                     (coe v0)))))
                                         (coe v11)
                                         (let v12
                                                = MAlonzo.Code.Axiom.Set.d_th_1430
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v12
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                  (coe
                                                     MAlonzo.Code.Ledger.Certs.d_voteDelegs_778
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.d_dState_818
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ledger.d_certState_1844
                                                           (coe v1)))))))))
                                   (coe
                                      (\ v12 ->
                                         coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 ()
                                           erased () erased
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1542
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1712
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1684
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1592
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1754
                                                    (coe v0))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1684
                                                    (coe v3))
                                                 (let v13
                                                        = MAlonzo.Code.Axiom.Set.d_th_1430
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v13
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1712
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
                                                                (coe v1))))))))
                                           (\ v13 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe
                                                   MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_300
                                                   (coe
                                                      MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_310
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v12) (coe v13))))))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError)
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_410
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Ledger.d_govSt_1842 (coe v1))))
-- Ledger.Chain.calculateStakeDistrs
d_calculateStakeDistrs_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1832 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1712
d_calculateStakeDistrs_2080 v0 ~v1 v2
  = du_calculateStakeDistrs_2080 v0 v2
du_calculateStakeDistrs_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1832 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1712
du_calculateStakeDistrs_2080 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_10711
      (coe du_govActionDeposits_2026 (coe v0) (coe v1))
-- Ledger.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2128 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2128
  = C_CHAIN_2168 MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1984
                 MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2150
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Chain._.newEpochState
d_newEpochState_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_39205 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1984
d_newEpochState_2132 ~v0 ~v1 v2 = du_newEpochState_2132 v2
du_newEpochState_2132 ::
  T_GeneralizeTel_39205 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1984
du_newEpochState_2132 v0
  = coe
      d_newEpochState_1916 (coe d_'46'generalizedField'45's_39197 v0)
-- Ledger.Chain._.slot
d_slot_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_39205 -> AgdaAny
d_slot_2136 ~v0 ~v1 v2 = du_slot_2136 v2
du_slot_2136 :: T_GeneralizeTel_39205 -> AgdaAny
du_slot_2136 v0
  = coe d_slot_1926 (coe d_'46'generalizedField'45'b_39199 v0)
-- Ledger.Chain._.ts
d_ts_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_39205 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2542]
d_ts_2138 ~v0 ~v1 v2 = du_ts_2138 v2
du_ts_2138 ::
  T_GeneralizeTel_39205 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2542]
du_ts_2138 v0
  = coe d_ts_1924 (coe d_'46'generalizedField'45'b_39199 v0)
-- Ledger.Chain._.epochState
d_epochState_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_39205 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958
d_epochState_2142 ~v0 ~v1 v2 = du_epochState_2142 v2
du_epochState_2142 ::
  T_GeneralizeTel_39205 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958
du_epochState_2142 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_epochState_1992
      (coe d_'46'generalizedField'45'nes_39201 v0)
-- Ledger.Chain._.es
d_es_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_39205 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_es_2150 ~v0 ~v1 v2 = du_es_2150 v2
du_es_2150 ::
  T_GeneralizeTel_39205 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
du_es_2150 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_es_1972
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_1992
         (coe d_'46'generalizedField'45'nes_39201 v0))
-- Ledger.Chain._.ls
d_ls_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_39205 -> MAlonzo.Code.Ledger.Ledger.T_LState_1832
d_ls_2154 ~v0 ~v1 v2 = du_ls_2154 v2
du_ls_2154 ::
  T_GeneralizeTel_39205 -> MAlonzo.Code.Ledger.Ledger.T_LState_1832
du_ls_2154 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ls_1970
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_1992
         (coe d_'46'generalizedField'45'nes_39201 v0))
-- Ledger.Chain._.constitution
d_constitution_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_39205 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2160 ~v0 ~v1 v2 = du_constitution_2160 v2
du_constitution_2160 ::
  T_GeneralizeTel_39205 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2160 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_742
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_1972
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_1992
            (coe d_'46'generalizedField'45'nes_39201 v0)))
-- Ledger.Chain._.pparams
d_pparams_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_39205 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2162 ~v0 ~v1 v2 = du_pparams_2162 v2
du_pparams_2162 ::
  T_GeneralizeTel_39205 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2162 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_746
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_1972
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_1992
            (coe d_'46'generalizedField'45'nes_39201 v0)))
-- Ledger.Chain..generalizedField-s
d_'46'generalizedField'45's_39197 ::
  T_GeneralizeTel_39205 -> T_ChainState_1912
d_'46'generalizedField'45's_39197 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-b
d_'46'generalizedField'45'b_39199 ::
  T_GeneralizeTel_39205 -> T_Block_1918
d_'46'generalizedField'45'b_39199 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_39201 ::
  T_GeneralizeTel_39205 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1984
d_'46'generalizedField'45'nes_39201
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_39203 ::
  T_GeneralizeTel_39205 -> MAlonzo.Code.Ledger.Ledger.T_LState_1832
d_'46'generalizedField'45'ls''_39203
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.GeneralizeTel
d_GeneralizeTel_39205 a0 a1 = ()
data T_GeneralizeTel_39205
  = C_mkGeneralizeTel_39207 T_ChainState_1912 T_Block_1918
                            MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1984
                            MAlonzo.Code.Ledger.Ledger.T_LState_1832
