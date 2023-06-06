.class public LCatalano/Imaging/Corners/FastCornersDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Corners/ICornersFeatureDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->a:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->b:Z

    .line 37
    sget-object v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->FAST_9:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->c:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->a:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->b:Z

    .line 37
    sget-object v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->FAST_9:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->c:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    .line 105
    iput p1, p0, LCatalano/Imaging/Corners/FastCornersDetector;->a:I

    .line 106
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->a:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->b:Z

    .line 37
    sget-object v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->FAST_9:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->c:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    .line 122
    iput p1, p0, LCatalano/Imaging/Corners/FastCornersDetector;->a:I

    .line 123
    iput-boolean p2, p0, LCatalano/Imaging/Corners/FastCornersDetector;->b:Z

    .line 124
    return-void
.end method

.method public constructor <init>(IZLCatalano/Imaging/Corners/FastCornersDetector$Algorithm;)V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->a:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->b:Z

    .line 37
    sget-object v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->FAST_9:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->c:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    .line 133
    iput p1, p0, LCatalano/Imaging/Corners/FastCornersDetector;->a:I

    .line 134
    iput-boolean p2, p0, LCatalano/Imaging/Corners/FastCornersDetector;->b:Z

    .line 135
    iput-object p3, p0, LCatalano/Imaging/Corners/FastCornersDetector;->c:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    .line 136
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->a:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->b:Z

    .line 37
    sget-object v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->FAST_9:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->c:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    .line 113
    iput-object p1, p0, LCatalano/Imaging/Corners/FastCornersDetector;->c:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    .line 114
    return-void
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            ")",
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/Corners/FeaturePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, LCatalano/Imaging/Corners/FastCornersDetector$1;->a:[I

    iget-object v1, p0, LCatalano/Imaging/Corners/FastCornersDetector;->c:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    invoke-virtual {v1}, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 149
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 143
    :pswitch_0
    new-instance v0, LCatalano/Imaging/Corners/Fast9;

    iget v1, p0, LCatalano/Imaging/Corners/FastCornersDetector;->a:I

    iget-boolean v2, p0, LCatalano/Imaging/Corners/FastCornersDetector;->b:Z

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Corners/Fast9;-><init>(IZ)V

    .line 144
    invoke-virtual {v0, p1}, LCatalano/Imaging/Corners/Fast9;->ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_1
    new-instance v0, LCatalano/Imaging/Corners/Fast12;

    iget v1, p0, LCatalano/Imaging/Corners/FastCornersDetector;->a:I

    iget-boolean v2, p0, LCatalano/Imaging/Corners/FastCornersDetector;->b:Z

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Corners/Fast12;-><init>(IZ)V

    .line 147
    invoke-virtual {v0, p1}, LCatalano/Imaging/Corners/Fast12;->ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAlgorithm()LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->c:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->a:I

    return v0
.end method

.method public isSuppressed()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, LCatalano/Imaging/Corners/FastCornersDetector;->b:Z

    return v0
.end method

.method public setAlgorithm(LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, LCatalano/Imaging/Corners/FastCornersDetector;->c:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    .line 93
    return-void
.end method

.method public setSuppression(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, LCatalano/Imaging/Corners/FastCornersDetector;->b:Z

    .line 77
    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, LCatalano/Imaging/Corners/FastCornersDetector;->a:I

    .line 61
    return-void
.end method
