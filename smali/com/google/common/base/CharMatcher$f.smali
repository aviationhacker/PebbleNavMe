.class final Lcom/google/common/base/CharMatcher$f;
.super Lcom/google/common/base/CharMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1259
    new-instance v0, Lcom/google/common/base/CharMatcher$f;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$f;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$f;->a:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1257
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1257
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1263
    sparse-switch p1, :sswitch_data_0

    .line 1280
    const/16 v2, 0x2000

    if-lt p1, v2, :cond_0

    const/16 v2, 0x200a

    if-gt p1, v2, :cond_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 1278
    goto :goto_0

    :cond_0
    move v0, v1

    .line 1280
    goto :goto_0

    .line 1263
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x85 -> :sswitch_0
        0x1680 -> :sswitch_0
        0x2007 -> :sswitch_1
        0x2028 -> :sswitch_0
        0x2029 -> :sswitch_0
        0x205f -> :sswitch_0
        0x3000 -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1286
    const-string v0, "CharMatcher.breakingWhitespace()"

    return-object v0
.end method
