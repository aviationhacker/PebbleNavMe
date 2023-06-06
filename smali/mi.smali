.class public final enum Lmi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmi;

.field public static final enum b:Lmi;

.field private static final synthetic e:[Lmi;


# instance fields
.field private final c:C

.field private final d:C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Lmi;

    const-string v1, "PRIVATE"

    const/16 v2, 0x3a

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v4, v2, v3}, Lmi;-><init>(Ljava/lang/String;ICC)V

    sput-object v0, Lmi;->a:Lmi;

    .line 30
    new-instance v0, Lmi;

    const-string v1, "ICANN"

    const/16 v2, 0x21

    const/16 v3, 0x3f

    invoke-direct {v0, v1, v5, v2, v3}, Lmi;-><init>(Ljava/lang/String;ICC)V

    sput-object v0, Lmi;->b:Lmi;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lmi;

    sget-object v1, Lmi;->a:Lmi;

    aput-object v1, v0, v4

    sget-object v1, Lmi;->b:Lmi;

    aput-object v1, v0, v5

    sput-object v0, Lmi;->e:[Lmi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CC)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-char p3, p0, Lmi;->c:C

    .line 40
    iput-char p4, p0, Lmi;->d:C

    .line 41
    return-void
.end method

.method static a(C)Lmi;
    .locals 5

    .prologue
    .line 53
    invoke-static {}, Lmi;->values()[Lmi;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 54
    invoke-virtual {v3}, Lmi;->b()C

    move-result v4

    if-eq v4, p0, :cond_0

    invoke-virtual {v3}, Lmi;->a()C

    move-result v4

    if-ne v4, p0, :cond_1

    .line 55
    :cond_0
    return-object v3

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "No enum corresponding to given code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmi;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lmi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmi;

    return-object v0
.end method

.method public static values()[Lmi;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lmi;->e:[Lmi;

    invoke-virtual {v0}, [Lmi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmi;

    return-object v0
.end method


# virtual methods
.method a()C
    .locals 1

    .prologue
    .line 44
    iget-char v0, p0, Lmi;->d:C

    return v0
.end method

.method b()C
    .locals 1

    .prologue
    .line 48
    iget-char v0, p0, Lmi;->c:C

    return v0
.end method
