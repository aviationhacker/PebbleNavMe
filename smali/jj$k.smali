.class final enum Ljj$k;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljj$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljj$k;",
        ">;",
        "Ljj$l",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ljj$k;

.field private static final synthetic b:[Ljj$k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 726
    new-instance v0, Ljj$k;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Ljj$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$k;->a:Ljj$k;

    .line 725
    const/4 v0, 0x1

    new-array v0, v0, [Ljj$k;

    sget-object v1, Ljj$k;->a:Ljj$k;

    aput-object v1, v0, v2

    sput-object v0, Ljj$k;->b:[Ljj$k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 725
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$k;
    .locals 1

    .prologue
    .line 725
    const-class v0, Ljj$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$k;

    return-object v0
.end method

.method public static values()[Ljj$k;
    .locals 1

    .prologue
    .line 725
    sget-object v0, Ljj$k;->b:[Ljj$k;

    invoke-virtual {v0}, [Ljj$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$k;

    return-object v0
.end method


# virtual methods
.method public a()Ljj$x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$x",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 757
    return-void
.end method

.method public a(Ljj$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 765
    return-void
.end method

.method public a(Ljj$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$x",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 734
    return-void
.end method

.method public b()Ljj$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 738
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljj$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 773
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljj$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 781
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljj$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 789
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 753
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()Ljj$l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    return-object p0
.end method

.method public g()Ljj$l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 769
    return-object p0
.end method

.method public h()Ljj$l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    return-object p0
.end method

.method public i()Ljj$l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    return-object p0
.end method
