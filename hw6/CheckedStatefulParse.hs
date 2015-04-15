{-# OPTIONS_GHC -w #-}
module CheckedStatefulParse where
import Prelude hiding (LT, GT, EQ, id)
import Data.Char
import CheckedStatefulMonad
import Stateful hiding (Stateful, evaluate, execute)
import Lexer

-- parser produced by Happy Version 1.18.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11

action_0 (12) = happyShift action_2
action_0 (13) = happyShift action_11
action_0 (15) = happyShift action_12
action_0 (16) = happyShift action_13
action_0 (17) = happyShift action_14
action_0 (19) = happyShift action_15
action_0 (20) = happyShift action_16
action_0 (23) = happyShift action_17
action_0 (32) = happyShift action_18
action_0 (34) = happyShift action_19
action_0 (35) = happyShift action_20
action_0 (36) = happyShift action_21
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (9) = happyGoto action_8
action_0 (10) = happyGoto action_9
action_0 (11) = happyGoto action_10
action_0 _ = happyFail

action_1 (12) = happyShift action_2
action_1 _ = happyFail

action_2 (36) = happyShift action_44
action_2 _ = happyFail

action_3 (18) = happyShift action_42
action_3 (21) = happyShift action_43
action_3 (40) = happyAccept
action_3 _ = happyFail

action_4 _ = happyReduce_5

action_5 (18) = happyReduce_9
action_5 (21) = happyShift action_40
action_5 (33) = happyShift action_41
action_5 (37) = happyReduce_9
action_5 (39) = happyReduce_9
action_5 (40) = happyReduce_9
action_5 _ = happyReduce_9

action_6 (31) = happyShift action_39
action_6 _ = happyReduce_11

action_7 (26) = happyShift action_34
action_7 (27) = happyShift action_35
action_7 (28) = happyShift action_36
action_7 (29) = happyShift action_37
action_7 (30) = happyShift action_38
action_7 _ = happyReduce_13

action_8 (22) = happyShift action_32
action_8 (23) = happyShift action_33
action_8 _ = happyReduce_19

action_9 (24) = happyShift action_30
action_9 (25) = happyShift action_31
action_9 _ = happyReduce_22

action_10 (36) = happyShift action_29
action_10 _ = happyReduce_25

action_11 (36) = happyShift action_28
action_11 _ = happyFail

action_12 _ = happyReduce_28

action_13 _ = happyReduce_29

action_14 (19) = happyShift action_27
action_14 _ = happyFail

action_15 _ = happyReduce_34

action_16 _ = happyReduce_27

action_17 (15) = happyShift action_12
action_17 (16) = happyShift action_13
action_17 (19) = happyShift action_15
action_17 (20) = happyShift action_16
action_17 (23) = happyShift action_17
action_17 (32) = happyShift action_18
action_17 (34) = happyShift action_19
action_17 (35) = happyShift action_20
action_17 (36) = happyShift action_21
action_17 (11) = happyGoto action_26
action_17 _ = happyFail

action_18 (15) = happyShift action_12
action_18 (16) = happyShift action_13
action_18 (19) = happyShift action_15
action_18 (20) = happyShift action_16
action_18 (23) = happyShift action_17
action_18 (32) = happyShift action_18
action_18 (34) = happyShift action_19
action_18 (35) = happyShift action_20
action_18 (36) = happyShift action_21
action_18 (11) = happyGoto action_25
action_18 _ = happyFail

action_19 (15) = happyShift action_12
action_19 (16) = happyShift action_13
action_19 (19) = happyShift action_15
action_19 (20) = happyShift action_16
action_19 (23) = happyShift action_17
action_19 (32) = happyShift action_18
action_19 (34) = happyShift action_19
action_19 (35) = happyShift action_20
action_19 (36) = happyShift action_21
action_19 (11) = happyGoto action_24
action_19 _ = happyFail

action_20 (15) = happyShift action_12
action_20 (16) = happyShift action_13
action_20 (19) = happyShift action_15
action_20 (20) = happyShift action_16
action_20 (23) = happyShift action_17
action_20 (32) = happyShift action_18
action_20 (34) = happyShift action_19
action_20 (35) = happyShift action_20
action_20 (36) = happyShift action_21
action_20 (11) = happyGoto action_23
action_20 _ = happyFail

action_21 (12) = happyShift action_2
action_21 (13) = happyShift action_11
action_21 (15) = happyShift action_12
action_21 (16) = happyShift action_13
action_21 (17) = happyShift action_14
action_21 (19) = happyShift action_15
action_21 (20) = happyShift action_16
action_21 (23) = happyShift action_17
action_21 (32) = happyShift action_18
action_21 (34) = happyShift action_19
action_21 (35) = happyShift action_20
action_21 (36) = happyShift action_21
action_21 (4) = happyGoto action_22
action_21 (5) = happyGoto action_4
action_21 (6) = happyGoto action_5
action_21 (7) = happyGoto action_6
action_21 (8) = happyGoto action_7
action_21 (9) = happyGoto action_8
action_21 (10) = happyGoto action_9
action_21 (11) = happyGoto action_10
action_21 _ = happyFail

action_22 (18) = happyShift action_42
action_22 (21) = happyShift action_43
action_22 (37) = happyShift action_64
action_22 _ = happyFail

action_23 (36) = happyShift action_29
action_23 _ = happyReduce_31

action_24 (36) = happyShift action_29
action_24 _ = happyReduce_30

action_25 (36) = happyShift action_29
action_25 _ = happyReduce_33

action_26 (36) = happyShift action_29
action_26 _ = happyReduce_32

action_27 (21) = happyShift action_63
action_27 _ = happyFail

action_28 (12) = happyShift action_2
action_28 (13) = happyShift action_11
action_28 (15) = happyShift action_12
action_28 (16) = happyShift action_13
action_28 (17) = happyShift action_14
action_28 (19) = happyShift action_15
action_28 (20) = happyShift action_16
action_28 (23) = happyShift action_17
action_28 (32) = happyShift action_18
action_28 (34) = happyShift action_19
action_28 (35) = happyShift action_20
action_28 (36) = happyShift action_21
action_28 (4) = happyGoto action_62
action_28 (5) = happyGoto action_4
action_28 (6) = happyGoto action_5
action_28 (7) = happyGoto action_6
action_28 (8) = happyGoto action_7
action_28 (9) = happyGoto action_8
action_28 (10) = happyGoto action_9
action_28 (11) = happyGoto action_10
action_28 _ = happyFail

action_29 (12) = happyShift action_2
action_29 (13) = happyShift action_11
action_29 (15) = happyShift action_12
action_29 (16) = happyShift action_13
action_29 (17) = happyShift action_14
action_29 (19) = happyShift action_15
action_29 (20) = happyShift action_16
action_29 (23) = happyShift action_17
action_29 (32) = happyShift action_18
action_29 (34) = happyShift action_19
action_29 (35) = happyShift action_20
action_29 (36) = happyShift action_21
action_29 (4) = happyGoto action_61
action_29 (5) = happyGoto action_4
action_29 (6) = happyGoto action_5
action_29 (7) = happyGoto action_6
action_29 (8) = happyGoto action_7
action_29 (9) = happyGoto action_8
action_29 (10) = happyGoto action_9
action_29 (11) = happyGoto action_10
action_29 _ = happyFail

action_30 (15) = happyShift action_12
action_30 (16) = happyShift action_13
action_30 (19) = happyShift action_15
action_30 (20) = happyShift action_16
action_30 (23) = happyShift action_17
action_30 (32) = happyShift action_18
action_30 (34) = happyShift action_19
action_30 (35) = happyShift action_20
action_30 (36) = happyShift action_21
action_30 (11) = happyGoto action_60
action_30 _ = happyFail

action_31 (15) = happyShift action_12
action_31 (16) = happyShift action_13
action_31 (19) = happyShift action_15
action_31 (20) = happyShift action_16
action_31 (23) = happyShift action_17
action_31 (32) = happyShift action_18
action_31 (34) = happyShift action_19
action_31 (35) = happyShift action_20
action_31 (36) = happyShift action_21
action_31 (11) = happyGoto action_59
action_31 _ = happyFail

action_32 (15) = happyShift action_12
action_32 (16) = happyShift action_13
action_32 (19) = happyShift action_15
action_32 (20) = happyShift action_16
action_32 (23) = happyShift action_17
action_32 (32) = happyShift action_18
action_32 (34) = happyShift action_19
action_32 (35) = happyShift action_20
action_32 (36) = happyShift action_21
action_32 (10) = happyGoto action_58
action_32 (11) = happyGoto action_10
action_32 _ = happyFail

action_33 (15) = happyShift action_12
action_33 (16) = happyShift action_13
action_33 (19) = happyShift action_15
action_33 (20) = happyShift action_16
action_33 (23) = happyShift action_17
action_33 (32) = happyShift action_18
action_33 (34) = happyShift action_19
action_33 (35) = happyShift action_20
action_33 (36) = happyShift action_21
action_33 (10) = happyGoto action_57
action_33 (11) = happyGoto action_10
action_33 _ = happyFail

action_34 (15) = happyShift action_12
action_34 (16) = happyShift action_13
action_34 (19) = happyShift action_15
action_34 (20) = happyShift action_16
action_34 (23) = happyShift action_17
action_34 (32) = happyShift action_18
action_34 (34) = happyShift action_19
action_34 (35) = happyShift action_20
action_34 (36) = happyShift action_21
action_34 (9) = happyGoto action_56
action_34 (10) = happyGoto action_9
action_34 (11) = happyGoto action_10
action_34 _ = happyFail

action_35 (15) = happyShift action_12
action_35 (16) = happyShift action_13
action_35 (19) = happyShift action_15
action_35 (20) = happyShift action_16
action_35 (23) = happyShift action_17
action_35 (32) = happyShift action_18
action_35 (34) = happyShift action_19
action_35 (35) = happyShift action_20
action_35 (36) = happyShift action_21
action_35 (9) = happyGoto action_55
action_35 (10) = happyGoto action_9
action_35 (11) = happyGoto action_10
action_35 _ = happyFail

action_36 (15) = happyShift action_12
action_36 (16) = happyShift action_13
action_36 (19) = happyShift action_15
action_36 (20) = happyShift action_16
action_36 (23) = happyShift action_17
action_36 (32) = happyShift action_18
action_36 (34) = happyShift action_19
action_36 (35) = happyShift action_20
action_36 (36) = happyShift action_21
action_36 (9) = happyGoto action_54
action_36 (10) = happyGoto action_9
action_36 (11) = happyGoto action_10
action_36 _ = happyFail

action_37 (15) = happyShift action_12
action_37 (16) = happyShift action_13
action_37 (19) = happyShift action_15
action_37 (20) = happyShift action_16
action_37 (23) = happyShift action_17
action_37 (32) = happyShift action_18
action_37 (34) = happyShift action_19
action_37 (35) = happyShift action_20
action_37 (36) = happyShift action_21
action_37 (9) = happyGoto action_53
action_37 (10) = happyGoto action_9
action_37 (11) = happyGoto action_10
action_37 _ = happyFail

action_38 (15) = happyShift action_12
action_38 (16) = happyShift action_13
action_38 (19) = happyShift action_15
action_38 (20) = happyShift action_16
action_38 (23) = happyShift action_17
action_38 (32) = happyShift action_18
action_38 (34) = happyShift action_19
action_38 (35) = happyShift action_20
action_38 (36) = happyShift action_21
action_38 (9) = happyGoto action_52
action_38 (10) = happyGoto action_9
action_38 (11) = happyGoto action_10
action_38 _ = happyFail

action_39 (15) = happyShift action_12
action_39 (16) = happyShift action_13
action_39 (19) = happyShift action_15
action_39 (20) = happyShift action_16
action_39 (23) = happyShift action_17
action_39 (32) = happyShift action_18
action_39 (34) = happyShift action_19
action_39 (35) = happyShift action_20
action_39 (36) = happyShift action_21
action_39 (8) = happyGoto action_51
action_39 (9) = happyGoto action_8
action_39 (10) = happyGoto action_9
action_39 (11) = happyGoto action_10
action_39 _ = happyFail

action_40 (15) = happyShift action_12
action_40 (16) = happyShift action_13
action_40 (19) = happyShift action_15
action_40 (20) = happyShift action_16
action_40 (23) = happyShift action_17
action_40 (32) = happyShift action_18
action_40 (34) = happyShift action_19
action_40 (35) = happyShift action_20
action_40 (36) = happyShift action_21
action_40 (5) = happyGoto action_49
action_40 (6) = happyGoto action_50
action_40 (7) = happyGoto action_6
action_40 (8) = happyGoto action_7
action_40 (9) = happyGoto action_8
action_40 (10) = happyGoto action_9
action_40 (11) = happyGoto action_10
action_40 _ = happyFail

action_41 (15) = happyShift action_12
action_41 (16) = happyShift action_13
action_41 (19) = happyShift action_15
action_41 (20) = happyShift action_16
action_41 (23) = happyShift action_17
action_41 (32) = happyShift action_18
action_41 (34) = happyShift action_19
action_41 (35) = happyShift action_20
action_41 (36) = happyShift action_21
action_41 (7) = happyGoto action_48
action_41 (8) = happyGoto action_7
action_41 (9) = happyGoto action_8
action_41 (10) = happyGoto action_9
action_41 (11) = happyGoto action_10
action_41 _ = happyFail

action_42 (12) = happyShift action_2
action_42 (13) = happyShift action_11
action_42 (15) = happyShift action_12
action_42 (16) = happyShift action_13
action_42 (17) = happyShift action_14
action_42 (19) = happyShift action_15
action_42 (20) = happyShift action_16
action_42 (23) = happyShift action_17
action_42 (32) = happyShift action_18
action_42 (34) = happyShift action_19
action_42 (35) = happyShift action_20
action_42 (36) = happyShift action_21
action_42 (4) = happyGoto action_47
action_42 (5) = happyGoto action_4
action_42 (6) = happyGoto action_5
action_42 (7) = happyGoto action_6
action_42 (8) = happyGoto action_7
action_42 (9) = happyGoto action_8
action_42 (10) = happyGoto action_9
action_42 (11) = happyGoto action_10
action_42 _ = happyFail

action_43 (12) = happyShift action_2
action_43 (13) = happyShift action_11
action_43 (15) = happyShift action_12
action_43 (16) = happyShift action_13
action_43 (17) = happyShift action_14
action_43 (19) = happyShift action_15
action_43 (20) = happyShift action_16
action_43 (23) = happyShift action_17
action_43 (32) = happyShift action_18
action_43 (34) = happyShift action_19
action_43 (35) = happyShift action_20
action_43 (36) = happyShift action_21
action_43 (4) = happyGoto action_46
action_43 (5) = happyGoto action_4
action_43 (6) = happyGoto action_5
action_43 (7) = happyGoto action_6
action_43 (8) = happyGoto action_7
action_43 (9) = happyGoto action_8
action_43 (10) = happyGoto action_9
action_43 (11) = happyGoto action_10
action_43 _ = happyFail

action_44 (19) = happyShift action_45
action_44 _ = happyFail

action_45 (37) = happyShift action_68
action_45 _ = happyFail

action_46 (18) = happyShift action_42
action_46 (21) = happyShift action_43
action_46 _ = happyReduce_7

action_47 (18) = happyShift action_42
action_47 (21) = happyShift action_43
action_47 _ = happyReduce_6

action_48 (31) = happyShift action_39
action_48 _ = happyReduce_10

action_49 _ = happyReduce_8

action_50 (21) = happyShift action_40
action_50 (33) = happyShift action_41
action_50 _ = happyReduce_9

action_51 (26) = happyShift action_34
action_51 (27) = happyShift action_35
action_51 (28) = happyShift action_36
action_51 (29) = happyShift action_37
action_51 (30) = happyShift action_38
action_51 _ = happyReduce_12

action_52 (22) = happyShift action_32
action_52 (23) = happyShift action_33
action_52 _ = happyReduce_14

action_53 (22) = happyShift action_32
action_53 (23) = happyShift action_33
action_53 _ = happyReduce_18

action_54 (22) = happyShift action_32
action_54 (23) = happyShift action_33
action_54 _ = happyReduce_17

action_55 (22) = happyShift action_32
action_55 (23) = happyShift action_33
action_55 _ = happyReduce_16

action_56 (22) = happyShift action_32
action_56 (23) = happyShift action_33
action_56 _ = happyReduce_15

action_57 (24) = happyShift action_30
action_57 (25) = happyShift action_31
action_57 _ = happyReduce_21

action_58 (24) = happyShift action_30
action_58 (25) = happyShift action_31
action_58 _ = happyReduce_20

action_59 (36) = happyShift action_29
action_59 _ = happyReduce_24

action_60 (36) = happyShift action_29
action_60 _ = happyReduce_23

action_61 (18) = happyShift action_42
action_61 (21) = happyShift action_43
action_61 (37) = happyShift action_67
action_61 _ = happyFail

action_62 (18) = happyShift action_42
action_62 (21) = happyShift action_43
action_62 (37) = happyShift action_66
action_62 _ = happyFail

action_63 (12) = happyShift action_2
action_63 (13) = happyShift action_11
action_63 (15) = happyShift action_12
action_63 (16) = happyShift action_13
action_63 (17) = happyShift action_14
action_63 (19) = happyShift action_15
action_63 (20) = happyShift action_16
action_63 (23) = happyShift action_17
action_63 (32) = happyShift action_18
action_63 (34) = happyShift action_19
action_63 (35) = happyShift action_20
action_63 (36) = happyShift action_21
action_63 (4) = happyGoto action_65
action_63 (5) = happyGoto action_4
action_63 (6) = happyGoto action_5
action_63 (7) = happyGoto action_6
action_63 (8) = happyGoto action_7
action_63 (9) = happyGoto action_8
action_63 (10) = happyGoto action_9
action_63 (11) = happyGoto action_10
action_63 _ = happyFail

action_64 _ = happyReduce_35

action_65 (18) = happyShift action_71
action_65 (21) = happyShift action_43
action_65 _ = happyFail

action_66 (12) = happyShift action_2
action_66 (13) = happyShift action_11
action_66 (15) = happyShift action_12
action_66 (16) = happyShift action_13
action_66 (17) = happyShift action_14
action_66 (19) = happyShift action_15
action_66 (20) = happyShift action_16
action_66 (23) = happyShift action_17
action_66 (32) = happyShift action_18
action_66 (34) = happyShift action_19
action_66 (35) = happyShift action_20
action_66 (36) = happyShift action_21
action_66 (4) = happyGoto action_70
action_66 (5) = happyGoto action_4
action_66 (6) = happyGoto action_5
action_66 (7) = happyGoto action_6
action_66 (8) = happyGoto action_7
action_66 (9) = happyGoto action_8
action_66 (10) = happyGoto action_9
action_66 (11) = happyGoto action_10
action_66 _ = happyFail

action_67 _ = happyReduce_26

action_68 (38) = happyShift action_69
action_68 _ = happyFail

action_69 (12) = happyShift action_2
action_69 (13) = happyShift action_11
action_69 (15) = happyShift action_12
action_69 (16) = happyShift action_13
action_69 (17) = happyShift action_14
action_69 (19) = happyShift action_15
action_69 (20) = happyShift action_16
action_69 (23) = happyShift action_17
action_69 (32) = happyShift action_18
action_69 (34) = happyShift action_19
action_69 (35) = happyShift action_20
action_69 (36) = happyShift action_21
action_69 (4) = happyGoto action_74
action_69 (5) = happyGoto action_4
action_69 (6) = happyGoto action_5
action_69 (7) = happyGoto action_6
action_69 (8) = happyGoto action_7
action_69 (9) = happyGoto action_8
action_69 (10) = happyGoto action_9
action_69 (11) = happyGoto action_10
action_69 _ = happyFail

action_70 (18) = happyShift action_73
action_70 (21) = happyShift action_43
action_70 _ = happyFail

action_71 (12) = happyShift action_2
action_71 (13) = happyShift action_11
action_71 (15) = happyShift action_12
action_71 (16) = happyShift action_13
action_71 (17) = happyShift action_14
action_71 (19) = happyShift action_15
action_71 (20) = happyShift action_16
action_71 (23) = happyShift action_17
action_71 (32) = happyShift action_18
action_71 (34) = happyShift action_19
action_71 (35) = happyShift action_20
action_71 (36) = happyShift action_21
action_71 (4) = happyGoto action_72
action_71 (5) = happyGoto action_4
action_71 (6) = happyGoto action_5
action_71 (7) = happyGoto action_6
action_71 (8) = happyGoto action_7
action_71 (9) = happyGoto action_8
action_71 (10) = happyGoto action_9
action_71 (11) = happyGoto action_10
action_71 _ = happyFail

action_72 (18) = happyShift action_42
action_72 (21) = happyShift action_43
action_72 _ = happyReduce_2

action_73 (12) = happyShift action_2
action_73 (13) = happyShift action_11
action_73 (14) = happyShift action_76
action_73 (15) = happyShift action_12
action_73 (16) = happyShift action_13
action_73 (17) = happyShift action_14
action_73 (19) = happyShift action_15
action_73 (20) = happyShift action_16
action_73 (23) = happyShift action_17
action_73 (32) = happyShift action_18
action_73 (34) = happyShift action_19
action_73 (35) = happyShift action_20
action_73 (36) = happyShift action_21
action_73 (4) = happyGoto action_47
action_73 (5) = happyGoto action_4
action_73 (6) = happyGoto action_5
action_73 (7) = happyGoto action_6
action_73 (8) = happyGoto action_7
action_73 (9) = happyGoto action_8
action_73 (10) = happyGoto action_9
action_73 (11) = happyGoto action_10
action_73 _ = happyFail

action_74 (18) = happyShift action_42
action_74 (21) = happyShift action_43
action_74 (39) = happyShift action_75
action_74 _ = happyFail

action_75 _ = happyReduce_1

action_76 (12) = happyShift action_2
action_76 (13) = happyShift action_11
action_76 (15) = happyShift action_12
action_76 (16) = happyShift action_13
action_76 (17) = happyShift action_14
action_76 (19) = happyShift action_15
action_76 (20) = happyShift action_16
action_76 (23) = happyShift action_17
action_76 (32) = happyShift action_18
action_76 (34) = happyShift action_19
action_76 (35) = happyShift action_20
action_76 (36) = happyShift action_21
action_76 (4) = happyGoto action_77
action_76 (5) = happyGoto action_4
action_76 (6) = happyGoto action_5
action_76 (7) = happyGoto action_6
action_76 (8) = happyGoto action_7
action_76 (9) = happyGoto action_8
action_76 (10) = happyGoto action_9
action_76 (11) = happyGoto action_10
action_76 _ = happyFail

action_77 (18) = happyShift action_42
action_77 (21) = happyShift action_43
action_77 _ = happyReduce_3

happyReduce_1 = happyReduce 7 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Function happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 6 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Declare happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 8 4 happyReduction_3
happyReduction_3 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_3 happy_var_5 happy_var_8
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Seq happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  6 happyReduction_10
happyReduction_10 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Binary Or happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  6 happyReduction_11
happyReduction_11 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  7 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Binary And happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  7 happyReduction_13
happyReduction_13 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary EQ happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary LT happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  8 happyReduction_16
happyReduction_16 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary GT happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  8 happyReduction_17
happyReduction_17 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary LE happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  8 happyReduction_18
happyReduction_18 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary GE happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  8 happyReduction_19
happyReduction_19 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  9 happyReduction_20
happyReduction_20 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Binary Add happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  9 happyReduction_21
happyReduction_21 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Binary Sub happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  9 happyReduction_22
happyReduction_22 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary Mul happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  10 happyReduction_24
happyReduction_24 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary Div happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  10 happyReduction_25
happyReduction_25 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happyReduce 4 11 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (Call happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_1  11 happyReduction_27
happyReduction_27 (HappyTerminal (Digits happy_var_1))
	 =  HappyAbsSyn11
		 (Literal (IntV happy_var_1)
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  11 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn11
		 (Literal (BoolV True)
	)

happyReduce_29 = happySpecReduce_1  11 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn11
		 (Literal (BoolV False)
	)

happyReduce_30 = happySpecReduce_2  11 happyReduction_30
happyReduction_30 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Access happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  11 happyReduction_31
happyReduction_31 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Mutable happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  11 happyReduction_32
happyReduction_32 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Unary Neg happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  11 happyReduction_33
happyReduction_33 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Unary Not happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  11 happyReduction_34
happyReduction_34 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn11
		 (Variable happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  11 happyReduction_35
happyReduction_35 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenKeyword "function" -> cont 12;
	TokenKeyword "if" -> cont 13;
	TokenKeyword "else" -> cont 14;
	TokenKeyword "true" -> cont 15;
	TokenKeyword "false" -> cont 16;
	TokenKeyword "var" -> cont 17;
	Symbol ";" -> cont 18;
	TokenIdent happy_dollar_dollar -> cont 19;
	Digits happy_dollar_dollar -> cont 20;
	Symbol "=" -> cont 21;
	Symbol "+" -> cont 22;
	Symbol "-" -> cont 23;
	Symbol "*" -> cont 24;
	Symbol "/" -> cont 25;
	Symbol "<" -> cont 26;
	Symbol ">" -> cont 27;
	Symbol "<=" -> cont 28;
	Symbol ">=" -> cont 29;
	Symbol "==" -> cont 30;
	Symbol "&&" -> cont 31;
	Symbol "!" -> cont 32;
	Symbol "||" -> cont 33;
	Symbol "@" -> cont 34;
	TokenKeyword "ref" -> cont 35;
	Symbol "(" -> cont 36;
	Symbol ")" -> cont 37;
	Symbol "{" -> cont 38;
	Symbol "}" -> cont 39;
	_ -> happyError' (tk:tks)
	}

happyError_ 40 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . happyError

parser tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


symbols = ["+", "-", "*", "/", "(", ")", "{", "}", ";", "==", "=", "<=", ">=", "<", ">", "||", "&&", "!", "@"]
keywords = ["function", "var", "if", "else", "true", "false", "ref"]
parseExp str = parser (lexer symbols keywords str)

parseInput = do
  input <- getContents
  print (parseExp input)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 30 "templates/GenericTemplate.hs" #-}








{-# LINE 51 "templates/GenericTemplate.hs" #-}

{-# LINE 61 "templates/GenericTemplate.hs" #-}

{-# LINE 70 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 148 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk





             new_state = action


happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 246 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--	trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 312 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
