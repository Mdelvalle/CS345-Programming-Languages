{-# OPTIONS_GHC -w #-}
module CheckedStatefulParse where
import Prelude hiding (LT, GT, EQ, id)
import Data.Char
import CheckedStateful
import Stateful hiding (evaluate, execute)
import ErrorChecking hiding (evaluate, execute)
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

action_0 (12) = happyShift action_11
action_0 (13) = happyShift action_12
action_0 (15) = happyShift action_13
action_0 (16) = happyShift action_14
action_0 (17) = happyShift action_2
action_0 (18) = happyShift action_15
action_0 (19) = happyShift action_16
action_0 (20) = happyShift action_17
action_0 (22) = happyShift action_18
action_0 (23) = happyShift action_19
action_0 (26) = happyShift action_20
action_0 (35) = happyShift action_21
action_0 (36) = happyShift action_22
action_0 (38) = happyShift action_23
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (9) = happyGoto action_8
action_0 (10) = happyGoto action_9
action_0 (11) = happyGoto action_10
action_0 _ = happyFail

action_1 (17) = happyShift action_2
action_1 _ = happyFail

action_2 (22) = happyShift action_47
action_2 _ = happyFail

action_3 (21) = happyShift action_46
action_3 (42) = happyAccept
action_3 _ = happyFail

action_4 _ = happyReduce_6

action_5 (24) = happyShift action_44
action_5 (37) = happyShift action_45
action_5 _ = happyReduce_10

action_6 (34) = happyShift action_43
action_6 _ = happyReduce_12

action_7 (29) = happyShift action_38
action_7 (30) = happyShift action_39
action_7 (31) = happyShift action_40
action_7 (32) = happyShift action_41
action_7 (33) = happyShift action_42
action_7 _ = happyReduce_14

action_8 (25) = happyShift action_36
action_8 (26) = happyShift action_37
action_8 _ = happyReduce_20

action_9 (27) = happyShift action_34
action_9 (28) = happyShift action_35
action_9 _ = happyReduce_23

action_10 (38) = happyShift action_33
action_10 _ = happyReduce_26

action_11 (38) = happyShift action_32
action_11 _ = happyFail

action_12 (38) = happyShift action_31
action_12 _ = happyFail

action_13 _ = happyReduce_29

action_14 _ = happyReduce_30

action_15 (15) = happyShift action_13
action_15 (16) = happyShift action_14
action_15 (18) = happyShift action_15
action_15 (20) = happyShift action_17
action_15 (22) = happyShift action_18
action_15 (23) = happyShift action_19
action_15 (26) = happyShift action_20
action_15 (35) = happyShift action_21
action_15 (36) = happyShift action_22
action_15 (38) = happyShift action_23
action_15 (11) = happyGoto action_30
action_15 _ = happyFail

action_16 (12) = happyShift action_11
action_16 (13) = happyShift action_12
action_16 (15) = happyShift action_13
action_16 (16) = happyShift action_14
action_16 (17) = happyShift action_2
action_16 (18) = happyShift action_15
action_16 (19) = happyShift action_16
action_16 (20) = happyShift action_17
action_16 (22) = happyShift action_18
action_16 (23) = happyShift action_19
action_16 (26) = happyShift action_20
action_16 (35) = happyShift action_21
action_16 (36) = happyShift action_22
action_16 (38) = happyShift action_23
action_16 (4) = happyGoto action_28
action_16 (5) = happyGoto action_29
action_16 (6) = happyGoto action_5
action_16 (7) = happyGoto action_6
action_16 (8) = happyGoto action_7
action_16 (9) = happyGoto action_8
action_16 (10) = happyGoto action_9
action_16 (11) = happyGoto action_10
action_16 _ = happyFail

action_17 _ = happyReduce_31

action_18 _ = happyReduce_36

action_19 _ = happyReduce_28

action_20 (15) = happyShift action_13
action_20 (16) = happyShift action_14
action_20 (18) = happyShift action_15
action_20 (20) = happyShift action_17
action_20 (22) = happyShift action_18
action_20 (23) = happyShift action_19
action_20 (26) = happyShift action_20
action_20 (35) = happyShift action_21
action_20 (36) = happyShift action_22
action_20 (38) = happyShift action_23
action_20 (11) = happyGoto action_27
action_20 _ = happyFail

action_21 (15) = happyShift action_13
action_21 (16) = happyShift action_14
action_21 (18) = happyShift action_15
action_21 (20) = happyShift action_17
action_21 (22) = happyShift action_18
action_21 (23) = happyShift action_19
action_21 (26) = happyShift action_20
action_21 (35) = happyShift action_21
action_21 (36) = happyShift action_22
action_21 (38) = happyShift action_23
action_21 (11) = happyGoto action_26
action_21 _ = happyFail

action_22 (15) = happyShift action_13
action_22 (16) = happyShift action_14
action_22 (18) = happyShift action_15
action_22 (20) = happyShift action_17
action_22 (22) = happyShift action_18
action_22 (23) = happyShift action_19
action_22 (26) = happyShift action_20
action_22 (35) = happyShift action_21
action_22 (36) = happyShift action_22
action_22 (38) = happyShift action_23
action_22 (11) = happyGoto action_25
action_22 _ = happyFail

action_23 (12) = happyShift action_11
action_23 (13) = happyShift action_12
action_23 (15) = happyShift action_13
action_23 (16) = happyShift action_14
action_23 (17) = happyShift action_2
action_23 (18) = happyShift action_15
action_23 (19) = happyShift action_16
action_23 (20) = happyShift action_17
action_23 (22) = happyShift action_18
action_23 (23) = happyShift action_19
action_23 (26) = happyShift action_20
action_23 (35) = happyShift action_21
action_23 (36) = happyShift action_22
action_23 (38) = happyShift action_23
action_23 (4) = happyGoto action_24
action_23 (5) = happyGoto action_4
action_23 (6) = happyGoto action_5
action_23 (7) = happyGoto action_6
action_23 (8) = happyGoto action_7
action_23 (9) = happyGoto action_8
action_23 (10) = happyGoto action_9
action_23 (11) = happyGoto action_10
action_23 _ = happyFail

action_24 (21) = happyShift action_46
action_24 (39) = happyShift action_65
action_24 _ = happyFail

action_25 (38) = happyShift action_33
action_25 _ = happyReduce_33

action_26 (38) = happyShift action_33
action_26 _ = happyReduce_34

action_27 (38) = happyShift action_33
action_27 _ = happyReduce_32

action_28 (21) = happyShift action_46
action_28 _ = happyReduce_8

action_29 (21) = happyReduce_7
action_29 (39) = happyReduce_7
action_29 (41) = happyReduce_7
action_29 (42) = happyReduce_7
action_29 _ = happyReduce_7

action_30 (38) = happyShift action_33
action_30 _ = happyReduce_35

action_31 (12) = happyShift action_11
action_31 (13) = happyShift action_12
action_31 (15) = happyShift action_13
action_31 (16) = happyShift action_14
action_31 (17) = happyShift action_2
action_31 (18) = happyShift action_15
action_31 (19) = happyShift action_16
action_31 (20) = happyShift action_17
action_31 (22) = happyShift action_18
action_31 (23) = happyShift action_19
action_31 (26) = happyShift action_20
action_31 (35) = happyShift action_21
action_31 (36) = happyShift action_22
action_31 (38) = happyShift action_23
action_31 (4) = happyGoto action_64
action_31 (5) = happyGoto action_4
action_31 (6) = happyGoto action_5
action_31 (7) = happyGoto action_6
action_31 (8) = happyGoto action_7
action_31 (9) = happyGoto action_8
action_31 (10) = happyGoto action_9
action_31 (11) = happyGoto action_10
action_31 _ = happyFail

action_32 (22) = happyShift action_63
action_32 _ = happyFail

action_33 (12) = happyShift action_11
action_33 (13) = happyShift action_12
action_33 (15) = happyShift action_13
action_33 (16) = happyShift action_14
action_33 (17) = happyShift action_2
action_33 (18) = happyShift action_15
action_33 (19) = happyShift action_16
action_33 (20) = happyShift action_17
action_33 (22) = happyShift action_18
action_33 (23) = happyShift action_19
action_33 (26) = happyShift action_20
action_33 (35) = happyShift action_21
action_33 (36) = happyShift action_22
action_33 (38) = happyShift action_23
action_33 (4) = happyGoto action_62
action_33 (5) = happyGoto action_4
action_33 (6) = happyGoto action_5
action_33 (7) = happyGoto action_6
action_33 (8) = happyGoto action_7
action_33 (9) = happyGoto action_8
action_33 (10) = happyGoto action_9
action_33 (11) = happyGoto action_10
action_33 _ = happyFail

action_34 (15) = happyShift action_13
action_34 (16) = happyShift action_14
action_34 (18) = happyShift action_15
action_34 (20) = happyShift action_17
action_34 (22) = happyShift action_18
action_34 (23) = happyShift action_19
action_34 (26) = happyShift action_20
action_34 (35) = happyShift action_21
action_34 (36) = happyShift action_22
action_34 (38) = happyShift action_23
action_34 (11) = happyGoto action_61
action_34 _ = happyFail

action_35 (15) = happyShift action_13
action_35 (16) = happyShift action_14
action_35 (18) = happyShift action_15
action_35 (20) = happyShift action_17
action_35 (22) = happyShift action_18
action_35 (23) = happyShift action_19
action_35 (26) = happyShift action_20
action_35 (35) = happyShift action_21
action_35 (36) = happyShift action_22
action_35 (38) = happyShift action_23
action_35 (11) = happyGoto action_60
action_35 _ = happyFail

action_36 (15) = happyShift action_13
action_36 (16) = happyShift action_14
action_36 (18) = happyShift action_15
action_36 (20) = happyShift action_17
action_36 (22) = happyShift action_18
action_36 (23) = happyShift action_19
action_36 (26) = happyShift action_20
action_36 (35) = happyShift action_21
action_36 (36) = happyShift action_22
action_36 (38) = happyShift action_23
action_36 (10) = happyGoto action_59
action_36 (11) = happyGoto action_10
action_36 _ = happyFail

action_37 (15) = happyShift action_13
action_37 (16) = happyShift action_14
action_37 (18) = happyShift action_15
action_37 (20) = happyShift action_17
action_37 (22) = happyShift action_18
action_37 (23) = happyShift action_19
action_37 (26) = happyShift action_20
action_37 (35) = happyShift action_21
action_37 (36) = happyShift action_22
action_37 (38) = happyShift action_23
action_37 (10) = happyGoto action_58
action_37 (11) = happyGoto action_10
action_37 _ = happyFail

action_38 (15) = happyShift action_13
action_38 (16) = happyShift action_14
action_38 (18) = happyShift action_15
action_38 (20) = happyShift action_17
action_38 (22) = happyShift action_18
action_38 (23) = happyShift action_19
action_38 (26) = happyShift action_20
action_38 (35) = happyShift action_21
action_38 (36) = happyShift action_22
action_38 (38) = happyShift action_23
action_38 (9) = happyGoto action_57
action_38 (10) = happyGoto action_9
action_38 (11) = happyGoto action_10
action_38 _ = happyFail

action_39 (15) = happyShift action_13
action_39 (16) = happyShift action_14
action_39 (18) = happyShift action_15
action_39 (20) = happyShift action_17
action_39 (22) = happyShift action_18
action_39 (23) = happyShift action_19
action_39 (26) = happyShift action_20
action_39 (35) = happyShift action_21
action_39 (36) = happyShift action_22
action_39 (38) = happyShift action_23
action_39 (9) = happyGoto action_56
action_39 (10) = happyGoto action_9
action_39 (11) = happyGoto action_10
action_39 _ = happyFail

action_40 (15) = happyShift action_13
action_40 (16) = happyShift action_14
action_40 (18) = happyShift action_15
action_40 (20) = happyShift action_17
action_40 (22) = happyShift action_18
action_40 (23) = happyShift action_19
action_40 (26) = happyShift action_20
action_40 (35) = happyShift action_21
action_40 (36) = happyShift action_22
action_40 (38) = happyShift action_23
action_40 (9) = happyGoto action_55
action_40 (10) = happyGoto action_9
action_40 (11) = happyGoto action_10
action_40 _ = happyFail

action_41 (15) = happyShift action_13
action_41 (16) = happyShift action_14
action_41 (18) = happyShift action_15
action_41 (20) = happyShift action_17
action_41 (22) = happyShift action_18
action_41 (23) = happyShift action_19
action_41 (26) = happyShift action_20
action_41 (35) = happyShift action_21
action_41 (36) = happyShift action_22
action_41 (38) = happyShift action_23
action_41 (9) = happyGoto action_54
action_41 (10) = happyGoto action_9
action_41 (11) = happyGoto action_10
action_41 _ = happyFail

action_42 (15) = happyShift action_13
action_42 (16) = happyShift action_14
action_42 (18) = happyShift action_15
action_42 (20) = happyShift action_17
action_42 (22) = happyShift action_18
action_42 (23) = happyShift action_19
action_42 (26) = happyShift action_20
action_42 (35) = happyShift action_21
action_42 (36) = happyShift action_22
action_42 (38) = happyShift action_23
action_42 (9) = happyGoto action_53
action_42 (10) = happyGoto action_9
action_42 (11) = happyGoto action_10
action_42 _ = happyFail

action_43 (15) = happyShift action_13
action_43 (16) = happyShift action_14
action_43 (18) = happyShift action_15
action_43 (20) = happyShift action_17
action_43 (22) = happyShift action_18
action_43 (23) = happyShift action_19
action_43 (26) = happyShift action_20
action_43 (35) = happyShift action_21
action_43 (36) = happyShift action_22
action_43 (38) = happyShift action_23
action_43 (8) = happyGoto action_52
action_43 (9) = happyGoto action_8
action_43 (10) = happyGoto action_9
action_43 (11) = happyGoto action_10
action_43 _ = happyFail

action_44 (15) = happyShift action_13
action_44 (16) = happyShift action_14
action_44 (18) = happyShift action_15
action_44 (20) = happyShift action_17
action_44 (22) = happyShift action_18
action_44 (23) = happyShift action_19
action_44 (26) = happyShift action_20
action_44 (35) = happyShift action_21
action_44 (36) = happyShift action_22
action_44 (38) = happyShift action_23
action_44 (5) = happyGoto action_51
action_44 (6) = happyGoto action_5
action_44 (7) = happyGoto action_6
action_44 (8) = happyGoto action_7
action_44 (9) = happyGoto action_8
action_44 (10) = happyGoto action_9
action_44 (11) = happyGoto action_10
action_44 _ = happyFail

action_45 (15) = happyShift action_13
action_45 (16) = happyShift action_14
action_45 (18) = happyShift action_15
action_45 (20) = happyShift action_17
action_45 (22) = happyShift action_18
action_45 (23) = happyShift action_19
action_45 (26) = happyShift action_20
action_45 (35) = happyShift action_21
action_45 (36) = happyShift action_22
action_45 (38) = happyShift action_23
action_45 (7) = happyGoto action_50
action_45 (8) = happyGoto action_7
action_45 (9) = happyGoto action_8
action_45 (10) = happyGoto action_9
action_45 (11) = happyGoto action_10
action_45 _ = happyFail

action_46 (12) = happyShift action_11
action_46 (13) = happyShift action_12
action_46 (15) = happyShift action_13
action_46 (16) = happyShift action_14
action_46 (17) = happyShift action_2
action_46 (18) = happyShift action_15
action_46 (19) = happyShift action_16
action_46 (20) = happyShift action_17
action_46 (22) = happyShift action_18
action_46 (23) = happyShift action_19
action_46 (26) = happyShift action_20
action_46 (35) = happyShift action_21
action_46 (36) = happyShift action_22
action_46 (38) = happyShift action_23
action_46 (4) = happyGoto action_49
action_46 (5) = happyGoto action_4
action_46 (6) = happyGoto action_5
action_46 (7) = happyGoto action_6
action_46 (8) = happyGoto action_7
action_46 (9) = happyGoto action_8
action_46 (10) = happyGoto action_9
action_46 (11) = happyGoto action_10
action_46 _ = happyFail

action_47 (24) = happyShift action_48
action_47 _ = happyFail

action_48 (12) = happyShift action_11
action_48 (13) = happyShift action_12
action_48 (15) = happyShift action_13
action_48 (16) = happyShift action_14
action_48 (17) = happyShift action_2
action_48 (18) = happyShift action_15
action_48 (19) = happyShift action_16
action_48 (20) = happyShift action_17
action_48 (22) = happyShift action_18
action_48 (23) = happyShift action_19
action_48 (26) = happyShift action_20
action_48 (35) = happyShift action_21
action_48 (36) = happyShift action_22
action_48 (38) = happyShift action_23
action_48 (4) = happyGoto action_69
action_48 (5) = happyGoto action_4
action_48 (6) = happyGoto action_5
action_48 (7) = happyGoto action_6
action_48 (8) = happyGoto action_7
action_48 (9) = happyGoto action_8
action_48 (10) = happyGoto action_9
action_48 (11) = happyGoto action_10
action_48 _ = happyFail

action_49 (21) = happyShift action_46
action_49 _ = happyReduce_5

action_50 (34) = happyShift action_43
action_50 _ = happyReduce_11

action_51 _ = happyReduce_9

action_52 (29) = happyShift action_38
action_52 (30) = happyShift action_39
action_52 (31) = happyShift action_40
action_52 (32) = happyShift action_41
action_52 (33) = happyShift action_42
action_52 _ = happyReduce_13

action_53 (25) = happyShift action_36
action_53 (26) = happyShift action_37
action_53 _ = happyReduce_15

action_54 (25) = happyShift action_36
action_54 (26) = happyShift action_37
action_54 _ = happyReduce_19

action_55 (25) = happyShift action_36
action_55 (26) = happyShift action_37
action_55 _ = happyReduce_18

action_56 (25) = happyShift action_36
action_56 (26) = happyShift action_37
action_56 _ = happyReduce_17

action_57 (25) = happyShift action_36
action_57 (26) = happyShift action_37
action_57 _ = happyReduce_16

action_58 (27) = happyShift action_34
action_58 (28) = happyShift action_35
action_58 _ = happyReduce_22

action_59 (27) = happyShift action_34
action_59 (28) = happyShift action_35
action_59 _ = happyReduce_21

action_60 (38) = happyShift action_33
action_60 _ = happyReduce_25

action_61 (38) = happyShift action_33
action_61 _ = happyReduce_24

action_62 (21) = happyShift action_46
action_62 (39) = happyShift action_68
action_62 _ = happyFail

action_63 (39) = happyShift action_67
action_63 _ = happyFail

action_64 (21) = happyShift action_46
action_64 (39) = happyShift action_66
action_64 _ = happyFail

action_65 _ = happyReduce_37

action_66 (12) = happyShift action_11
action_66 (13) = happyShift action_12
action_66 (15) = happyShift action_13
action_66 (16) = happyShift action_14
action_66 (17) = happyShift action_2
action_66 (18) = happyShift action_15
action_66 (19) = happyShift action_16
action_66 (20) = happyShift action_17
action_66 (22) = happyShift action_18
action_66 (23) = happyShift action_19
action_66 (26) = happyShift action_20
action_66 (35) = happyShift action_21
action_66 (36) = happyShift action_22
action_66 (38) = happyShift action_23
action_66 (40) = happyShift action_73
action_66 (4) = happyGoto action_72
action_66 (5) = happyGoto action_4
action_66 (6) = happyGoto action_5
action_66 (7) = happyGoto action_6
action_66 (8) = happyGoto action_7
action_66 (9) = happyGoto action_8
action_66 (10) = happyGoto action_9
action_66 (11) = happyGoto action_10
action_66 _ = happyFail

action_67 (40) = happyShift action_71
action_67 _ = happyFail

action_68 _ = happyReduce_27

action_69 (21) = happyShift action_70
action_69 _ = happyFail

action_70 (12) = happyShift action_11
action_70 (13) = happyShift action_12
action_70 (15) = happyShift action_13
action_70 (16) = happyShift action_14
action_70 (17) = happyShift action_2
action_70 (18) = happyShift action_15
action_70 (19) = happyShift action_16
action_70 (20) = happyShift action_17
action_70 (22) = happyShift action_18
action_70 (23) = happyShift action_19
action_70 (26) = happyShift action_20
action_70 (35) = happyShift action_21
action_70 (36) = happyShift action_22
action_70 (38) = happyShift action_23
action_70 (4) = happyGoto action_77
action_70 (5) = happyGoto action_4
action_70 (6) = happyGoto action_5
action_70 (7) = happyGoto action_6
action_70 (8) = happyGoto action_7
action_70 (9) = happyGoto action_8
action_70 (10) = happyGoto action_9
action_70 (11) = happyGoto action_10
action_70 _ = happyFail

action_71 (12) = happyShift action_11
action_71 (13) = happyShift action_12
action_71 (15) = happyShift action_13
action_71 (16) = happyShift action_14
action_71 (17) = happyShift action_2
action_71 (18) = happyShift action_15
action_71 (19) = happyShift action_16
action_71 (20) = happyShift action_17
action_71 (22) = happyShift action_18
action_71 (23) = happyShift action_19
action_71 (26) = happyShift action_20
action_71 (35) = happyShift action_21
action_71 (36) = happyShift action_22
action_71 (38) = happyShift action_23
action_71 (4) = happyGoto action_76
action_71 (5) = happyGoto action_4
action_71 (6) = happyGoto action_5
action_71 (7) = happyGoto action_6
action_71 (8) = happyGoto action_7
action_71 (9) = happyGoto action_8
action_71 (10) = happyGoto action_9
action_71 (11) = happyGoto action_10
action_71 _ = happyFail

action_72 (21) = happyShift action_75
action_72 _ = happyFail

action_73 (12) = happyShift action_11
action_73 (13) = happyShift action_12
action_73 (15) = happyShift action_13
action_73 (16) = happyShift action_14
action_73 (17) = happyShift action_2
action_73 (18) = happyShift action_15
action_73 (19) = happyShift action_16
action_73 (20) = happyShift action_17
action_73 (22) = happyShift action_18
action_73 (23) = happyShift action_19
action_73 (26) = happyShift action_20
action_73 (35) = happyShift action_21
action_73 (36) = happyShift action_22
action_73 (38) = happyShift action_23
action_73 (4) = happyGoto action_74
action_73 (5) = happyGoto action_4
action_73 (6) = happyGoto action_5
action_73 (7) = happyGoto action_6
action_73 (8) = happyGoto action_7
action_73 (9) = happyGoto action_8
action_73 (10) = happyGoto action_9
action_73 (11) = happyGoto action_10
action_73 _ = happyFail

action_74 (21) = happyShift action_46
action_74 (41) = happyShift action_80
action_74 _ = happyFail

action_75 (12) = happyShift action_11
action_75 (13) = happyShift action_12
action_75 (14) = happyShift action_79
action_75 (15) = happyShift action_13
action_75 (16) = happyShift action_14
action_75 (17) = happyShift action_2
action_75 (18) = happyShift action_15
action_75 (19) = happyShift action_16
action_75 (20) = happyShift action_17
action_75 (22) = happyShift action_18
action_75 (23) = happyShift action_19
action_75 (26) = happyShift action_20
action_75 (35) = happyShift action_21
action_75 (36) = happyShift action_22
action_75 (38) = happyShift action_23
action_75 (4) = happyGoto action_49
action_75 (5) = happyGoto action_4
action_75 (6) = happyGoto action_5
action_75 (7) = happyGoto action_6
action_75 (8) = happyGoto action_7
action_75 (9) = happyGoto action_8
action_75 (10) = happyGoto action_9
action_75 (11) = happyGoto action_10
action_75 _ = happyFail

action_76 (21) = happyShift action_46
action_76 (41) = happyShift action_78
action_76 _ = happyFail

action_77 (21) = happyShift action_46
action_77 _ = happyReduce_1

action_78 _ = happyReduce_2

action_79 (12) = happyShift action_11
action_79 (13) = happyShift action_12
action_79 (15) = happyShift action_13
action_79 (16) = happyShift action_14
action_79 (17) = happyShift action_2
action_79 (18) = happyShift action_15
action_79 (19) = happyShift action_16
action_79 (20) = happyShift action_17
action_79 (22) = happyShift action_18
action_79 (23) = happyShift action_19
action_79 (26) = happyShift action_20
action_79 (35) = happyShift action_21
action_79 (36) = happyShift action_22
action_79 (38) = happyShift action_23
action_79 (4) = happyGoto action_82
action_79 (5) = happyGoto action_4
action_79 (6) = happyGoto action_5
action_79 (7) = happyGoto action_6
action_79 (8) = happyGoto action_7
action_79 (9) = happyGoto action_8
action_79 (10) = happyGoto action_9
action_79 (11) = happyGoto action_10
action_79 _ = happyFail

action_80 (14) = happyShift action_81
action_80 _ = happyFail

action_81 (40) = happyShift action_83
action_81 _ = happyFail

action_82 (21) = happyShift action_46
action_82 _ = happyReduce_4

action_83 (12) = happyShift action_11
action_83 (13) = happyShift action_12
action_83 (15) = happyShift action_13
action_83 (16) = happyShift action_14
action_83 (17) = happyShift action_2
action_83 (18) = happyShift action_15
action_83 (19) = happyShift action_16
action_83 (20) = happyShift action_17
action_83 (22) = happyShift action_18
action_83 (23) = happyShift action_19
action_83 (26) = happyShift action_20
action_83 (35) = happyShift action_21
action_83 (36) = happyShift action_22
action_83 (38) = happyShift action_23
action_83 (4) = happyGoto action_84
action_83 (5) = happyGoto action_4
action_83 (6) = happyGoto action_5
action_83 (7) = happyGoto action_6
action_83 (8) = happyGoto action_7
action_83 (9) = happyGoto action_8
action_83 (10) = happyGoto action_9
action_83 (11) = happyGoto action_10
action_83 _ = happyFail

action_84 (21) = happyShift action_46
action_84 (41) = happyShift action_85
action_84 _ = happyFail

action_85 _ = happyReduce_3

happyReduce_1 = happyReduce 6 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Declare happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 7 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
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

happyReduce_3 = happyReduce 11 4 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 8 4 happyReduction_4
happyReduction_4 ((HappyAbsSyn4  happy_var_8) `HappyStk`
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

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Seq happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ReturnT happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ReturnT happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Binary Or happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Binary And happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  7 happyReduction_14
happyReduction_14 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary EQ happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  8 happyReduction_16
happyReduction_16 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary LT happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  8 happyReduction_17
happyReduction_17 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary GT happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  8 happyReduction_18
happyReduction_18 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary LE happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  8 happyReduction_19
happyReduction_19 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Binary GE happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  8 happyReduction_20
happyReduction_20 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  9 happyReduction_21
happyReduction_21 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Binary Add happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  9 happyReduction_22
happyReduction_22 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Binary Sub happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  9 happyReduction_23
happyReduction_23 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  10 happyReduction_24
happyReduction_24 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary Mul happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  10 happyReduction_25
happyReduction_25 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Binary Div happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  10 happyReduction_26
happyReduction_26 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happyReduce 4 11 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (Call happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_1  11 happyReduction_28
happyReduction_28 (HappyTerminal (Digits happy_var_1))
	 =  HappyAbsSyn11
		 (Literal (IntV happy_var_1)
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  11 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn11
		 (Literal (BoolV True)
	)

happyReduce_30 = happySpecReduce_1  11 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn11
		 (Literal (BoolV False)
	)

happyReduce_31 = happySpecReduce_1  11 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn11
		 (Literal Undefined
	)

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

happyReduce_34 = happySpecReduce_2  11 happyReduction_34
happyReduction_34 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Access happy_var_2
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  11 happyReduction_35
happyReduction_35 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Mutable happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  11 happyReduction_36
happyReduction_36 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn11
		 (Variable happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  11 happyReduction_37
happyReduction_37 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 42 42 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenKeyword "function" -> cont 12;
	TokenKeyword "if" -> cont 13;
	TokenKeyword "else" -> cont 14;
	TokenKeyword "true" -> cont 15;
	TokenKeyword "false" -> cont 16;
	TokenKeyword "var" -> cont 17;
	TokenKeyword "ref" -> cont 18;
	TokenKeyword "return" -> cont 19;
	TokenKeyword "undefined" -> cont 20;
	Symbol ";" -> cont 21;
	TokenIdent happy_dollar_dollar -> cont 22;
	Digits happy_dollar_dollar -> cont 23;
	Symbol "=" -> cont 24;
	Symbol "+" -> cont 25;
	Symbol "-" -> cont 26;
	Symbol "*" -> cont 27;
	Symbol "/" -> cont 28;
	Symbol "<" -> cont 29;
	Symbol ">" -> cont 30;
	Symbol "<=" -> cont 31;
	Symbol ">=" -> cont 32;
	Symbol "==" -> cont 33;
	Symbol "&&" -> cont 34;
	Symbol "@" -> cont 35;
	Symbol "!" -> cont 36;
	Symbol "||" -> cont 37;
	Symbol "(" -> cont 38;
	Symbol ")" -> cont 39;
	Symbol "{" -> cont 40;
	Symbol "}" -> cont 41;
	_ -> happyError' (tk:tks)
	}

happyError_ 42 tk tks = happyError' tks
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
keywords = ["function", "var", "if", "else", "true", "false", "ref", "return", "undefined"]
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
