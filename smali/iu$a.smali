.class final enum Liu$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapMaker$e;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "To be supported"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Liu$a;",
        ">;",
        "Lcom/google/common/collect/MapMaker$e",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Liu$a;

.field private static final synthetic b:[Liu$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Liu$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Liu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liu$a;->a:Liu$a;

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Liu$a;

    sget-object v1, Liu$a;->a:Liu$a;

    aput-object v1, v0, v2

    sput-object v0, Liu$a;->b:[Liu$a;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Liu$a;
    .locals 1

    .prologue
    .line 51
    const-class v0, Liu$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Liu$a;

    return-object v0
.end method

.method public static values()[Liu$a;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Liu$a;->b:[Liu$a;

    invoke-virtual {v0}, [Liu$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liu$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/MapMaker$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$f",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method
