.class final Lcom/google/common/base/CharMatcher$d;
.super Lcom/google/common/base/CharMatcher$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/CharMatcher$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1293
    new-instance v0, Lcom/google/common/base/CharMatcher$d;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$d;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$d;->a:Lcom/google/common/base/CharMatcher$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 1296
    const-string v0, "CharMatcher.ascii()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$u;-><init>(Ljava/lang/String;)V

    .line 1297
    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1

    .prologue
    .line 1301
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
