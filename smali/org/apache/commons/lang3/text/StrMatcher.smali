.class public abstract Lorg/apache/commons/lang3/text/StrMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/text/StrMatcher$e;,
        Lorg/apache/commons/lang3/text/StrMatcher$c;,
        Lorg/apache/commons/lang3/text/StrMatcher$d;,
        Lorg/apache/commons/lang3/text/StrMatcher$a;,
        Lorg/apache/commons/lang3/text/StrMatcher$b;
    }
.end annotation


# static fields
.field private static final a:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final b:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final c:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final d:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final e:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final f:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final g:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final h:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final i:Lorg/apache/commons/lang3/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$a;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$a;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->a:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 42
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$a;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$a;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->b:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 46
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$a;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$a;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->c:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 51
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$b;

    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$b;-><init>([C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->d:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 55
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$e;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrMatcher$e;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->e:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 59
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$a;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$a;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->f:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$a;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$a;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->g:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 67
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$b;

    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$b;-><init>([C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->h:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 71
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$c;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrMatcher$c;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->i:Lorg/apache/commons/lang3/text/StrMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method

.method public static charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrMatcher$a;-><init>(C)V

    return-object v0
.end method

.method public static charSetMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 2

    .prologue
    .line 190
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->i:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 196
    :goto_0
    return-object v0

    .line 193
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 194
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$a;-><init>(C)V

    goto :goto_0

    .line 196
    :cond_2
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$b;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$b;-><init>([C)V

    goto :goto_0
.end method

.method public static varargs charSetMatcher([C)Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 2

    .prologue
    .line 174
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->i:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 180
    :goto_0
    return-object v0

    .line 177
    :cond_1
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 178
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$a;

    const/4 v1, 0x0

    aget-char v1, p0, v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$a;-><init>(C)V

    goto :goto_0

    .line 180
    :cond_2
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$b;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrMatcher$b;-><init>([C)V

    goto :goto_0
.end method

.method public static commaMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->a:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static doubleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->g:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->i:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static quoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->h:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static singleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->f:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static spaceMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->c:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->d:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 206
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->i:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 209
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$d;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrMatcher$d;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static tabMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->b:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static trimMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->e:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method


# virtual methods
.method public isMatch([CI)I
    .locals 2

    .prologue
    .line 268
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    return v0
.end method

.method public abstract isMatch([CIII)I
.end method
