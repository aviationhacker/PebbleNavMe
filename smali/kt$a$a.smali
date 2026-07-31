.class final Lkt$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkt$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lku;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lku;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lkt$a$a;->a:Ljava/lang/Object;

    .line 188
    iput-object p2, p0, Lkt$a$a;->b:Lku;

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lku;Lkt$1;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lkt$a$a;-><init>(Ljava/lang/Object;Lku;)V

    return-void
.end method

.method static synthetic a(Lkt$a$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lkt$a$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lkt$a$a;)Lku;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lkt$a$a;->b:Lku;

    return-object v0
.end method
