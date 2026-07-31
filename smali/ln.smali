.class public final Lln;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lln;->a:Ljava/lang/String;

    .line 32
    iput p2, p0, Lln;->b:I

    .line 33
    return-void
.end method

.method public static a(Ljava/lang/String;)Lln;
    .locals 4

    .prologue
    const/16 v0, 0x10

    const/4 v3, 0x1

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 44
    const-string v2, "0x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0X"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 58
    :goto_0
    new-instance v1, Lln;

    invoke-direct {v1, p0, v0}, Lln;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 47
    :cond_2
    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    .line 48
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 50
    :cond_3
    const/16 v0, 0x30

    if-ne v1, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 51
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 52
    const/16 v0, 0x8

    goto :goto_0

    .line 55
    :cond_4
    const/16 v0, 0xa

    goto :goto_0
.end method
