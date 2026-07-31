.class public final Lmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmk$1;,
        Lmk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x72c597c5037807eeL


# instance fields
.field private final a:C

.field private final b:C

.field private final c:Z

.field private transient d:Ljava/lang/String;


# direct methods
.method private constructor <init>(CCZ)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-le p1, p2, :cond_0

    .line 75
    :goto_0
    iput-char p2, p0, Lmk;->a:C

    .line 76
    iput-char p1, p0, Lmk;->b:C

    .line 77
    iput-boolean p3, p0, Lmk;->c:Z

    .line 78
    return-void

    :cond_0
    move v0, p2

    move p2, p1

    move p1, v0

    goto :goto_0
.end method

.method public static a(C)Lmk;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lmk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lmk;-><init>(CCZ)V

    return-object v0
.end method

.method public static a(CC)Lmk;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lmk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lmk;-><init>(CCZ)V

    return-object v0
.end method

.method static synthetic a(Lmk;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lmk;->c:Z

    return v0
.end method

.method static synthetic b(Lmk;)C
    .locals 1

    .prologue
    .line 34
    iget-char v0, p0, Lmk;->a:C

    return v0
.end method

.method public static b(C)Lmk;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lmk;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lmk;-><init>(CCZ)V

    return-object v0
.end method

.method public static b(CC)Lmk;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lmk;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lmk;-><init>(CCZ)V

    return-object v0
.end method

.method static synthetic c(Lmk;)C
    .locals 1

    .prologue
    .line 34
    iget-char v0, p0, Lmk;->b:C

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lmk;->c:Z

    return v0
.end method

.method public c(C)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    iget-char v0, p0, Lmk;->a:C

    if-lt p1, v0, :cond_0

    iget-char v0, p0, Lmk;->b:C

    if-gt p1, v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lmk;->c:Z

    if-eq v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    if-ne p1, p0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    instance-of v2, p1, Lmk;

    if-nez v2, :cond_2

    move v0, v1

    .line 213
    goto :goto_0

    .line 215
    :cond_2
    check-cast p1, Lmk;

    .line 216
    iget-char v2, p0, Lmk;->a:C

    iget-char v3, p1, Lmk;->a:C

    if-ne v2, v3, :cond_3

    iget-char v2, p0, Lmk;->b:C

    iget-char v3, p1, Lmk;->b:C

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lmk;->c:Z

    iget-boolean v3, p1, Lmk;->c:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 226
    iget-char v0, p0, Lmk;->a:C

    add-int/lit8 v0, v0, 0x53

    iget-char v1, p0, Lmk;->b:C

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lmk;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lmk$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmk$a;-><init>(Lmk;Lmk$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lmk;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 238
    invoke-virtual {p0}, Lmk;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    :cond_0
    iget-char v1, p0, Lmk;->a:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    iget-char v1, p0, Lmk;->a:C

    iget-char v2, p0, Lmk;->b:C

    if-eq v1, v2, :cond_1

    .line 243
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    iget-char v1, p0, Lmk;->b:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmk;->d:Ljava/lang/String;

    .line 248
    :cond_2
    iget-object v0, p0, Lmk;->d:Ljava/lang/String;

    return-object v0
.end method
