.class public final Llr$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 619
    const-class v1, Llr$d;

    .line 620
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    aget-object v1, v1, v0

    const-class v2, Llr$d;

    const-string v3, "X"

    new-array v4, v0, [Ljava/lang/reflect/Type;

    .line 621
    invoke-static {v2, v3, v4}, Llr;->a(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 620
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Llr$d;->a:Z

    .line 619
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
