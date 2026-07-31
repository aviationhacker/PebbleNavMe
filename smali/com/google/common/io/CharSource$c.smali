.class final Lcom/google/common/io/CharSource$c;
.super Lcom/google/common/io/CharSource$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/google/common/io/CharSource$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 493
    new-instance v0, Lcom/google/common/io/CharSource$c;

    invoke-direct {v0}, Lcom/google/common/io/CharSource$c;-><init>()V

    sput-object v0, Lcom/google/common/io/CharSource$c;->a:Lcom/google/common/io/CharSource$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 496
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/common/io/CharSource$a;-><init>(Ljava/lang/CharSequence;)V

    .line 497
    return-void
.end method

.method static synthetic b()Lcom/google/common/io/CharSource$c;
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/google/common/io/CharSource$c;->a:Lcom/google/common/io/CharSource$c;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    const-string v0, "CharSource.empty()"

    return-object v0
.end method
