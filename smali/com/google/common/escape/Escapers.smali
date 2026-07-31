.class public final Lcom/google/common/escape/Escapers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/escape/Escapers$Builder;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/common/escape/Escapers$1;

    invoke-direct {v0}, Lcom/google/common/escape/Escapers$1;-><init>()V

    sput-object v0, Lcom/google/common/escape/Escapers;->a:Lcom/google/common/escape/Escaper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static builder()Lcom/google/common/escape/Escapers$Builder;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/common/escape/Escapers$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/escape/Escapers$Builder;-><init>(Lcom/google/common/escape/Escapers$1;)V

    return-object v0
.end method

.method public static computeReplacement(Lcom/google/common/escape/CharEscaper;C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/escape/Escapers;->a([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computeReplacement(Lcom/google/common/escape/UnicodeEscaper;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/escape/Escapers;->a([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nullEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/common/escape/Escapers;->a:Lcom/google/common/escape/Escaper;

    return-object v0
.end method
