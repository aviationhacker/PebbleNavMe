.class final Lkt$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkt$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lku;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Lku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lkt$b$a;->a:Ljava/lang/Object;

    .line 135
    iput-object p2, p0, Lkt$b$a;->b:Ljava/util/Iterator;

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;Lkt$1;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lkt$b$a;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    return-void
.end method

.method static synthetic a(Lkt$b$a;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lkt$b$a;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method static synthetic b(Lkt$b$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lkt$b$a;->a:Ljava/lang/Object;

    return-object v0
.end method
