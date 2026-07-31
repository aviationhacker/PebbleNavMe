.class public final LCatalano/Imaging/Tools/ConvolutionKernel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Laplacian:[[I

.field public static LaplacianOfGaussian:[[I

.field public static PrewittHorizontal:[[I

.field public static PrewittVertical:[[I

.field public static RobertsHorizontal:[[I

.field public static RobertsVertical:[[I

.field public static ScharrHorizontal:[[I

.field public static ScharrVertical:[[I

.field public static SmoothNoiseRobust_Horizontal:[[I

.field public static SmoothNoiseRobust_Vertical:[[I

.field public static SobelCross3x3:[[I

.field public static SobelCross5x5:[[I

.field public static SobelHorizontal:[[I

.field public static SobelHorizontalSD3x3:[[I

.field public static SobelHorizontalSD5x5:[[I

.field public static SobelVertical:[[I

.field public static SobelVerticalSD3x3:[[I

.field public static SobelVerticalSD5x5:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 39
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->Laplacian:[[I

    .line 49
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->SobelVertical:[[I

    .line 59
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->SobelHorizontal:[[I

    .line 69
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->SobelCross3x3:[[I

    .line 81
    new-array v0, v4, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->SobelCross5x5:[[I

    .line 93
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->SobelHorizontalSD3x3:[[I

    .line 105
    new-array v0, v4, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->SobelHorizontalSD5x5:[[I

    .line 117
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->SobelVerticalSD3x3:[[I

    .line 129
    new-array v0, v4, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->SobelVerticalSD5x5:[[I

    .line 141
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->PrewittHorizontal:[[I

    .line 151
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->PrewittVertical:[[I

    .line 160
    new-array v0, v5, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_27

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v7

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->RobertsHorizontal:[[I

    .line 168
    new-array v0, v5, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_29

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_2a

    aput-object v1, v0, v7

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->RobertsVertical:[[I

    .line 177
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2b

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2c

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_2d

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->ScharrHorizontal:[[I

    .line 187
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2e

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2f

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_30

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->ScharrVertical:[[I

    .line 199
    new-array v0, v4, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_31

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_32

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_33

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_34

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->LaplacianOfGaussian:[[I

    .line 212
    new-array v0, v4, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_36

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_37

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_38

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_39

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->SmoothNoiseRobust_Horizontal:[[I

    .line 225
    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_3b

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_3c

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_3d

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Tools/ConvolutionKernel;->SmoothNoiseRobust_Vertical:[[I

    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x8
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 49
    :array_3
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        -0x2
        0x0
        0x2
    .end array-data

    :array_5
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    .line 59
    :array_6
    .array-data 4
        -0x1
        -0x2
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    .line 69
    :array_9
    .array-data 4
        -0x1
        0x0
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    .line 81
    :array_c
    .array-data 4
        -0x1
        -0x2
        0x0
        0x2
        0x1
    .end array-data

    :array_d
    .array-data 4
        -0x2
        -0x4
        0x0
        0x4
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x4
        0x0
        -0x4
        -0x2
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x2
        0x0
        -0x2
        -0x1
    .end array-data

    .line 93
    :array_11
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    :array_12
    .array-data 4
        -0x2
        -0x4
        -0x2
    .end array-data

    :array_13
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    .line 105
    :array_14
    .array-data 4
        0x1
        0x4
        0x6
        0x4
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_16
    .array-data 4
        -0x2
        -0x8
        -0xc
        -0x8
        -0x2
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_18
    .array-data 4
        0x1
        0x4
        0x6
        0x4
        0x1
    .end array-data

    .line 117
    :array_19
    .array-data 4
        0x1
        -0x2
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0x2
        -0x4
        0x2
    .end array-data

    :array_1b
    .array-data 4
        0x1
        -0x2
        0x1
    .end array-data

    .line 129
    :array_1c
    .array-data 4
        0x1
        0x0
        -0x2
        0x0
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0x4
        0x0
        -0x8
        0x0
        0x4
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x0
        -0xc
        0x0
        0x6
    .end array-data

    :array_1f
    .array-data 4
        0x4
        0x0
        -0x8
        0x0
        0x4
    .end array-data

    :array_20
    .array-data 4
        0x1
        0x0
        -0x2
        0x0
        0x1
    .end array-data

    .line 141
    :array_21
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data

    .line 151
    :array_24
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_26
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 160
    :array_27
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_28
    .array-data 4
        0x0
        -0x1
    .end array-data

    .line 168
    :array_29
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2a
    .array-data 4
        -0x1
        0x0
    .end array-data

    .line 177
    :array_2b
    .array-data 4
        0x3
        0xa
        0x3
    .end array-data

    :array_2c
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2d
    .array-data 4
        -0x3
        -0xa
        -0x3
    .end array-data

    .line 187
    :array_2e
    .array-data 4
        0x3
        0x0
        -0x3
    .end array-data

    :array_2f
    .array-data 4
        0xa
        0x0
        -0xa
    .end array-data

    :array_30
    .array-data 4
        0x3
        0x0
        -0x3
    .end array-data

    .line 199
    :array_31
    .array-data 4
        0x0
        0x0
        -0x1
        0x0
        0x0
    .end array-data

    :array_32
    .array-data 4
        0x0
        -0x1
        -0x2
        -0x1
        0x0
    .end array-data

    :array_33
    .array-data 4
        -0x1
        -0x2
        0x10
        -0x2
        -0x1
    .end array-data

    :array_34
    .array-data 4
        0x0
        -0x1
        -0x2
        -0x1
        0x0
    .end array-data

    :array_35
    .array-data 4
        0x0
        0x0
        -0x1
        0x0
        0x0
    .end array-data

    .line 212
    :array_36
    .array-data 4
        -0x1
        -0x2
        -0x1
    .end array-data

    :array_37
    .array-data 4
        -0x2
        -0x4
        -0x2
    .end array-data

    :array_38
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_39
    .array-data 4
        0x2
        0x4
        0x2
    .end array-data

    :array_3a
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    .line 225
    :array_3b
    .array-data 4
        -0x1
        -0x2
        0x0
        0x2
        0x1
    .end array-data

    :array_3c
    .array-data 4
        -0x2
        -0x4
        0x0
        0x4
        0x2
    .end array-data

    :array_3d
    .array-data 4
        -0x1
        -0x2
        0x0
        0x2
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
