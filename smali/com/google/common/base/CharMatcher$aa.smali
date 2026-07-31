.class final Lcom/google/common/base/CharMatcher$aa;
.super Lcom/google/common/base/CharMatcher$z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "aa"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/CharMatcher$aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1488
    new-instance v0, Lcom/google/common/base/CharMatcher$aa;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$aa;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$aa;->a:Lcom/google/common/base/CharMatcher$aa;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 1491
    const-string v0, "CharMatcher.singleWidth()"

    const-string v1, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    .line 1493
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    .line 1494
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1491
    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/base/CharMatcher$z;-><init>(Ljava/lang/String;[C[C)V

    .line 1495
    return-void
.end method
