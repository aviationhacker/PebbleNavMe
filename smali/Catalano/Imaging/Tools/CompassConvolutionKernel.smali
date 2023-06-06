.class public final LCatalano/Imaging/Tools/CompassConvolutionKernel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Isotropic_East:[[F

.field public static Isotropic_North:[[F

.field public static Isotropic_Northeast:[[F

.field public static Isotropic_Northwest:[[F

.field public static Isotropic_South:[[F

.field public static Isotropic_Southeast:[[F

.field public static Isotropic_Southwest:[[F

.field public static Isotropic_West:[[F

.field public static Kirsch_East:[[I

.field public static Kirsch_North:[[I

.field public static Kirsch_Northeast:[[I

.field public static Kirsch_Northwest:[[I

.field public static Kirsch_South:[[I

.field public static Kirsch_Southeast:[[I

.field public static Kirsch_Southwest:[[I

.field public static Kirsch_West:[[I

.field public static Prewitt_East:[[I

.field public static Prewitt_North:[[I

.field public static Prewitt_Northeast:[[I

.field public static Prewitt_Northwest:[[I

.field public static Prewitt_South:[[I

.field public static Prewitt_Southeast:[[I

.field public static Prewitt_Southwest:[[I

.field public static Prewitt_West:[[I

.field public static Robinson_East:[[I

.field public static Robinson_North:[[I

.field public static Robinson_Northeast:[[I

.field public static Robinson_Northwest:[[I

.field public static Robinson_South:[[I

.field public static Robinson_Southeast:[[I

.field public static Robinson_Southwest:[[I

.field public static Robinson_West:[[I

.field public static Scharr_East:[[I

.field public static Scharr_North:[[I

.field public static Scharr_Northeast:[[I

.field public static Scharr_Northwest:[[I

.field public static Scharr_South:[[I

.field public static Scharr_Southeast:[[I

.field public static Scharr_Southwest:[[I

.field public static Scharr_West:[[I

.field public static Sobel_East:[[I

.field public static Sobel_North:[[I

.field public static Sobel_Northeast:[[I

.field public static Sobel_Northwest:[[I

.field public static Sobel_South:[[I

.field public static Sobel_Southeast:[[I

.field public static Sobel_Southwest:[[I

.field public static Sobel_West:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 37
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_North:[[F

    .line 45
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_Northwest:[[F

    .line 53
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_West:[[F

    .line 61
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_Southwest:[[F

    .line 69
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_South:[[F

    .line 77
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_f

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_11

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_Southeast:[[F

    .line 85
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_12

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_East:[[F

    .line 93
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_15

    aput-object v1, v0, v3

    new-array v1, v2, [F

    fill-array-data v1, :array_16

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_17

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_Northeast:[[F

    .line 101
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Kirsch_North:[[I

    .line 109
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Kirsch_Northwest:[[I

    .line 117
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Kirsch_West:[[I

    .line 125
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Kirsch_Southwest:[[I

    .line 133
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_26

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Kirsch_South:[[I

    .line 141
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_27

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_29

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Kirsch_Southeast:[[I

    .line 149
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_2b

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2c

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Kirsch_East:[[I

    .line 157
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2d

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_2e

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2f

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Kirsch_Northeast:[[I

    .line 165
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_30

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_31

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_32

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Prewitt_North:[[I

    .line 173
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_33

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_34

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_35

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Prewitt_Northwest:[[I

    .line 181
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_36

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_37

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_38

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Prewitt_West:[[I

    .line 189
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_39

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3a

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3b

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Prewitt_Southwest:[[I

    .line 197
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_3c

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3d

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3e

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Prewitt_South:[[I

    .line 205
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_3f

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_40

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_41

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Prewitt_Southeast:[[I

    .line 213
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_42

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_43

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_44

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Prewitt_East:[[I

    .line 221
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_45

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_46

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_47

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Prewitt_Northeast:[[I

    .line 229
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_48

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_49

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_4a

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_North:[[I

    .line 237
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4b

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_4c

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_4d

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_Northwest:[[I

    .line 245
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_4f

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_50

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_West:[[I

    .line 253
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_51

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_52

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_53

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_Southwest:[[I

    .line 261
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_54

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_55

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_56

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_South:[[I

    .line 269
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_57

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_58

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_59

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_Southeast:[[I

    .line 277
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_5b

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_5c

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_East:[[I

    .line 285
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5d

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_5e

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_5f

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Robinson_Northeast:[[I

    .line 293
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_60

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_61

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_62

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Scharr_North:[[I

    .line 301
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_63

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_64

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_65

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Scharr_Northwest:[[I

    .line 309
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_66

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_67

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_68

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Scharr_West:[[I

    .line 317
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_69

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_6a

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_6b

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Scharr_Southwest:[[I

    .line 325
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6c

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_6d

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_6e

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Scharr_South:[[I

    .line 333
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6f

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_70

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_71

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Scharr_Southeast:[[I

    .line 341
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_72

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_73

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_74

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Scharr_East:[[I

    .line 349
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_75

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_76

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_77

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Scharr_Northeast:[[I

    .line 357
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_78

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_79

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_7a

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Sobel_North:[[I

    .line 365
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_7b

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_7c

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_7d

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Sobel_Northwest:[[I

    .line 373
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_7e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_7f

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_80

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Sobel_West:[[I

    .line 381
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_81

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_82

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_83

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Sobel_Southwest:[[I

    .line 389
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_84

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_85

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_86

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Sobel_South:[[I

    .line 397
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_87

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_88

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_89

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Sobel_Southeast:[[I

    .line 405
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_8a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_8b

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_8c

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Sobel_East:[[I

    .line 413
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_8d

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_8e

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_8f

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Sobel_Northeast:[[I

    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x404afb0d
        0x0
        0x3fb504f3
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 45
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3fb504f3
    .end array-data

    :array_4
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        -0x404afb0d
        -0x40800000    # -1.0f
        0x0
    .end array-data

    .line 53
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3fb504f3
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        -0x40800000    # -1.0f
        -0x404afb0d
        -0x40800000    # -1.0f
    .end array-data

    .line 61
    :array_9
    .array-data 4
        0x3fb504f3
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        -0x404afb0d
    .end array-data

    .line 69
    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_d
    .array-data 4
        0x3fb504f3
        0x0
        -0x404afb0d
    .end array-data

    :array_e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data

    .line 77
    :array_f
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        -0x404afb0d
    .end array-data

    :array_10
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_11
    .array-data 4
        0x3fb504f3
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 85
    :array_12
    .array-data 4
        -0x40800000    # -1.0f
        -0x404afb0d
        -0x40800000    # -1.0f
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x3f800000    # 1.0f
        0x3fb504f3
        0x3f800000    # 1.0f
    .end array-data

    .line 93
    :array_15
    .array-data 4
        -0x404afb0d
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_16
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3fb504f3
    .end array-data

    .line 101
    :array_18
    .array-data 4
        -0x3
        -0x3
        0x5
    .end array-data

    :array_19
    .array-data 4
        -0x3
        0x0
        0x5
    .end array-data

    :array_1a
    .array-data 4
        -0x3
        -0x3
        0x5
    .end array-data

    .line 109
    :array_1b
    .array-data 4
        -0x3
        0x5
        0x5
    .end array-data

    :array_1c
    .array-data 4
        -0x3
        0x0
        0x5
    .end array-data

    :array_1d
    .array-data 4
        -0x3
        -0x3
        -0x3
    .end array-data

    .line 117
    :array_1e
    .array-data 4
        0x5
        0x5
        0x5
    .end array-data

    :array_1f
    .array-data 4
        -0x3
        0x0
        -0x3
    .end array-data

    :array_20
    .array-data 4
        -0x3
        -0x3
        -0x3
    .end array-data

    .line 125
    :array_21
    .array-data 4
        0x5
        0x5
        -0x3
    .end array-data

    :array_22
    .array-data 4
        0x5
        0x0
        -0x3
    .end array-data

    :array_23
    .array-data 4
        -0x3
        -0x3
        -0x3
    .end array-data

    .line 133
    :array_24
    .array-data 4
        0x5
        -0x3
        -0x3
    .end array-data

    :array_25
    .array-data 4
        0x5
        0x0
        -0x3
    .end array-data

    :array_26
    .array-data 4
        0x5
        -0x3
        -0x3
    .end array-data

    .line 141
    :array_27
    .array-data 4
        -0x3
        -0x3
        -0x3
    .end array-data

    :array_28
    .array-data 4
        0x5
        0x0
        -0x3
    .end array-data

    :array_29
    .array-data 4
        0x5
        0x5
        -0x3
    .end array-data

    .line 149
    :array_2a
    .array-data 4
        -0x3
        -0x3
        -0x3
    .end array-data

    :array_2b
    .array-data 4
        -0x3
        0x0
        -0x3
    .end array-data

    :array_2c
    .array-data 4
        0x5
        0x5
        0x5
    .end array-data

    .line 157
    :array_2d
    .array-data 4
        -0x3
        -0x3
        -0x3
    .end array-data

    :array_2e
    .array-data 4
        -0x3
        0x0
        0x5
    .end array-data

    :array_2f
    .array-data 4
        -0x3
        0x5
        0x5
    .end array-data

    .line 165
    :array_30
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_31
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_32
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    .line 173
    :array_33
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_34
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_35
    .array-data 4
        -0x1
        -0x1
        0x0
    .end array-data

    .line 181
    :array_36
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_37
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_38
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 189
    :array_39
    .array-data 4
        0x1
        0x1
        0x0
    .end array-data

    :array_3a
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_3b
    .array-data 4
        0x0
        -0x1
        -0x1
    .end array-data

    .line 197
    :array_3c
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_3d
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_3e
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    .line 205
    :array_3f
    .array-data 4
        0x0
        -0x1
        -0x1
    .end array-data

    :array_40
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_41
    .array-data 4
        0x1
        0x1
        0x0
    .end array-data

    .line 213
    :array_42
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_43
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_44
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    .line 221
    :array_45
    .array-data 4
        -0x1
        -0x1
        0x0
    .end array-data

    :array_46
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_47
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    .line 229
    :array_48
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_49
    .array-data 4
        -0x2
        0x0
        0x2
    .end array-data

    :array_4a
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    .line 237
    :array_4b
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_4c
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_4d
    .array-data 4
        -0x2
        -0x1
        0x0
    .end array-data

    .line 245
    :array_4e
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    :array_4f
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_50
    .array-data 4
        -0x1
        -0x2
        -0x1
    .end array-data

    .line 253
    :array_51
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data

    :array_52
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_53
    .array-data 4
        0x0
        -0x1
        -0x2
    .end array-data

    .line 261
    :array_54
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_55
    .array-data 4
        0x2
        0x0
        -0x2
    .end array-data

    :array_56
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    .line 269
    :array_57
    .array-data 4
        0x0
        -0x1
        -0x2
    .end array-data

    :array_58
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_59
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data

    .line 277
    :array_5a
    .array-data 4
        -0x1
        -0x2
        -0x1
    .end array-data

    :array_5b
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_5c
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    .line 285
    :array_5d
    .array-data 4
        -0x2
        -0x1
        0x0
    .end array-data

    :array_5e
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_5f
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    .line 293
    :array_60
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_61
    .array-data 4
        -0x3
        0x0
        0x3
    .end array-data

    :array_62
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    .line 301
    :array_63
    .array-data 4
        0x0
        0x1
        0x3
    .end array-data

    :array_64
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_65
    .array-data 4
        -0x3
        -0x1
        0x0
    .end array-data

    .line 309
    :array_66
    .array-data 4
        0x1
        0x3
        0x1
    .end array-data

    :array_67
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_68
    .array-data 4
        -0x1
        -0x3
        -0x1
    .end array-data

    .line 317
    :array_69
    .array-data 4
        0x3
        0x1
        0x0
    .end array-data

    :array_6a
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_6b
    .array-data 4
        0x0
        -0x1
        -0x3
    .end array-data

    .line 325
    :array_6c
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_6d
    .array-data 4
        0x3
        0x0
        -0x3
    .end array-data

    :array_6e
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    .line 333
    :array_6f
    .array-data 4
        0x0
        -0x1
        -0x3
    .end array-data

    :array_70
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_71
    .array-data 4
        0x3
        0x1
        0x0
    .end array-data

    .line 341
    :array_72
    .array-data 4
        -0x1
        -0x3
        -0x1
    .end array-data

    :array_73
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_74
    .array-data 4
        0x1
        0x3
        0x1
    .end array-data

    .line 349
    :array_75
    .array-data 4
        -0x3
        -0x1
        0x0
    .end array-data

    :array_76
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_77
    .array-data 4
        0x0
        0x1
        0x3
    .end array-data

    .line 357
    :array_78
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_79
    .array-data 4
        -0x2
        0x0
        0x2
    .end array-data

    :array_7a
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    .line 365
    :array_7b
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_7c
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_7d
    .array-data 4
        -0x2
        -0x1
        0x0
    .end array-data

    .line 373
    :array_7e
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    :array_7f
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_80
    .array-data 4
        -0x1
        -0x2
        -0x1
    .end array-data

    .line 381
    :array_81
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data

    :array_82
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_83
    .array-data 4
        0x0
        -0x1
        -0x2
    .end array-data

    .line 389
    :array_84
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_85
    .array-data 4
        0x2
        0x0
        -0x2
    .end array-data

    :array_86
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    .line 397
    :array_87
    .array-data 4
        0x0
        -0x1
        -0x2
    .end array-data

    :array_88
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_89
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data

    .line 405
    :array_8a
    .array-data 4
        -0x1
        -0x2
        -0x1
    .end array-data

    :array_8b
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_8c
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    .line 413
    :array_8d
    .array-data 4
        -0x2
        -0x1
        0x0
    .end array-data

    :array_8e
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_8f
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
