.class public abstract Lcom/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CharMatcher$i;,
        Lcom/google/common/base/CharMatcher$j;,
        Lcom/google/common/base/CharMatcher$c;,
        Lcom/google/common/base/CharMatcher$m;,
        Lcom/google/common/base/CharMatcher$n;,
        Lcom/google/common/base/CharMatcher$l;,
        Lcom/google/common/base/CharMatcher$y;,
        Lcom/google/common/base/CharMatcher$a;,
        Lcom/google/common/base/CharMatcher$v;,
        Lcom/google/common/base/CharMatcher$aa;,
        Lcom/google/common/base/CharMatcher$k;,
        Lcom/google/common/base/CharMatcher$p;,
        Lcom/google/common/base/CharMatcher$s;,
        Lcom/google/common/base/CharMatcher$t;,
        Lcom/google/common/base/CharMatcher$r;,
        Lcom/google/common/base/CharMatcher$q;,
        Lcom/google/common/base/CharMatcher$o;,
        Lcom/google/common/base/CharMatcher$g;,
        Lcom/google/common/base/CharMatcher$z;,
        Lcom/google/common/base/CharMatcher$d;,
        Lcom/google/common/base/CharMatcher$f;,
        Lcom/google/common/base/CharMatcher$ab;,
        Lcom/google/common/base/CharMatcher$x;,
        Lcom/google/common/base/CharMatcher$b;,
        Lcom/google/common/base/CharMatcher$e;,
        Lcom/google/common/base/CharMatcher$w;,
        Lcom/google/common/base/CharMatcher$u;,
        Lcom/google/common/base/CharMatcher$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/google/common/base/CharMatcher;

.field public static final ASCII:Lcom/google/common/base/CharMatcher;

.field public static final BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

.field public static final DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final INVISIBLE:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LETTER:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

.field public static final NONE:Lcom/google/common/base/CharMatcher;

.field public static final SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

.field public static final WHITESPACE:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    .line 237
    invoke-static {}, Lcom/google/common/base/CharMatcher;->breakingWhitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

    .line 242
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    .line 249
    invoke-static {}, Lcom/google/common/base/CharMatcher;->digit()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->DIGIT:Lcom/google/common/base/CharMatcher;

    .line 256
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaDigit()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 263
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaLetter()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/common/base/CharMatcher;

    .line 269
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaLetterOrDigit()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 275
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaUpperCase()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

    .line 281
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaLowerCase()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

    .line 287
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaIsoControl()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

    .line 294
    invoke-static {}, Lcom/google/common/base/CharMatcher;->invisible()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->INVISIBLE:Lcom/google/common/base/CharMatcher;

    .line 304
    invoke-static {}, Lcom/google/common/base/CharMatcher;->singleWidth()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

    .line 307
    invoke-static {}, Lcom/google/common/base/CharMatcher;->any()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->ANY:Lcom/google/common/base/CharMatcher;

    .line 310
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(CC)Lcom/google/common/base/CharMatcher$m;
    .locals 1

    .prologue
    .line 1702
    new-instance v0, Lcom/google/common/base/CharMatcher$m;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$m;-><init>(CC)V

    return-object v0
.end method

.method private static a(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 470
    packed-switch p0, :pswitch_data_0

    .line 480
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/common/base/CharMatcher;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {p1, p2}, Lgw;->a(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    :goto_0
    return-object v0

    .line 472
    :pswitch_0
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_0

    .line 474
    :pswitch_1
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_0

    .line 476
    :pswitch_2
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    int-to-char v0, v0

    .line 477
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    int-to-char v1, v1

    .line 478
    invoke-static {v0, v1}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher$m;

    move-result-object v0

    goto :goto_0

    .line 481
    :cond_0
    new-instance v0, Lcom/google/common/base/CharMatcher$e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/common/base/CharMatcher$e;-><init>(Ljava/util/BitSet;Ljava/lang/String;Lcom/google/common/base/CharMatcher$1;)V

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->b(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 904
    move v0, p6

    :goto_0
    if-ge p2, p3, :cond_2

    .line 905
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 906
    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 907
    if-nez v0, :cond_0

    .line 908
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 909
    const/4 v0, 0x1

    .line 904
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 912
    :cond_1
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 913
    const/4 v0, 0x0

    goto :goto_1

    .line 916
    :cond_2
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(II)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "SmallCharMatcher"
    .end annotation

    .prologue
    .line 488
    const/16 v0, 0x3ff

    if-gt p0, v0, :cond_0

    mul-int/lit8 v0, p0, 0x4

    mul-int/lit8 v0, v0, 0x10

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static any()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/common/base/CharMatcher$b;->a:Lcom/google/common/base/CharMatcher$b;

    return-object v0
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 345
    new-instance v0, Lcom/google/common/base/CharMatcher$c;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$c;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0

    .line 337
    :pswitch_0
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_0

    .line 339
    :pswitch_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_0

    .line 341
    :pswitch_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/base/CharMatcher;->a(CC)Lcom/google/common/base/CharMatcher$m;

    move-result-object v0

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static ascii()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/common/base/CharMatcher$d;->a:Lcom/google/common/base/CharMatcher$d;

    return-object v0
.end method

.method private static b(C)Ljava/lang/String;
    .locals 5

    .prologue
    .line 943
    const-string v1, "0123456789ABCDEF"

    .line 944
    const/4 v0, 0x6

    new-array v2, v0, [C

    fill-array-data v2, :array_0

    .line 945
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 946
    rsub-int/lit8 v3, v0, 0x5

    and-int/lit8 v4, p0, 0xf

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 947
    shr-int/lit8 v3, p0, 0x4

    int-to-char p0, v3

    .line 945
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 949
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 944
    nop

    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public static breakingWhitespace()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/google/common/base/CharMatcher$f;->a:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public static digit()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/google/common/base/CharMatcher$g;->a:Lcom/google/common/base/CharMatcher$g;

    return-object v0
.end method

.method public static forPredicate(Lcom/google/common/base/Predicate;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/lang/Character;",
            ">;)",
            "Lcom/google/common/base/CharMatcher;"
        }
    .end annotation

    .prologue
    .line 373
    instance-of v0, p0, Lcom/google/common/base/CharMatcher;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/base/CharMatcher;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/base/CharMatcher$i;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$i;-><init>(Lcom/google/common/base/Predicate;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static inRange(CC)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 365
    new-instance v0, Lcom/google/common/base/CharMatcher$j;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$j;-><init>(CC)V

    return-object v0
.end method

.method public static invisible()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/google/common/base/CharMatcher$k;->a:Lcom/google/common/base/CharMatcher$k;

    return-object v0
.end method

.method public static is(C)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/google/common/base/CharMatcher$l;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$l;-><init>(C)V

    return-object v0
.end method

.method public static isNot(C)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/google/common/base/CharMatcher$n;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$n;-><init>(C)V

    return-object v0
.end method

.method public static javaDigit()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/google/common/base/CharMatcher$o;->a:Lcom/google/common/base/CharMatcher$o;

    return-object v0
.end method

.method public static javaIsoControl()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/google/common/base/CharMatcher$p;->a:Lcom/google/common/base/CharMatcher$p;

    return-object v0
.end method

.method public static javaLetter()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/google/common/base/CharMatcher$q;->a:Lcom/google/common/base/CharMatcher$q;

    return-object v0
.end method

.method public static javaLetterOrDigit()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/google/common/base/CharMatcher$r;->a:Lcom/google/common/base/CharMatcher$r;

    return-object v0
.end method

.method public static javaLowerCase()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/google/common/base/CharMatcher$s;->a:Lcom/google/common/base/CharMatcher$s;

    return-object v0
.end method

.method public static javaUpperCase()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/common/base/CharMatcher$t;->a:Lcom/google/common/base/CharMatcher$t;

    return-object v0
.end method

.method public static none()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/common/base/CharMatcher$x;->a:Lcom/google/common/base/CharMatcher$x;

    return-object v0
.end method

.method public static noneOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 354
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public static singleWidth()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/google/common/base/CharMatcher$aa;->a:Lcom/google/common/base/CharMatcher$aa;

    return-object v0
.end method

.method public static whitespace()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/common/base/CharMatcher$ab;->b:Lcom/google/common/base/CharMatcher$ab;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/common/base/CharMatcher;
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x10000

    .line 439
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 440
    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->a(Ljava/util/BitSet;)V

    .line 441
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    .line 442
    mul-int/lit8 v1, v0, 0x2

    if-gt v1, v3, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/common/base/CharMatcher;->a(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    .line 446
    :cond_0
    invoke-virtual {v2, v5, v3}, Ljava/util/BitSet;->flip(II)V

    .line 447
    sub-int/2addr v3, v0

    .line 448
    const-string v0, ".negate()"

    .line 449
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v4

    .line 451
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 454
    :goto_1
    new-instance v1, Lcom/google/common/base/CharMatcher$1;

    .line 455
    invoke-static {v3, v2, v0}, Lcom/google/common/base/CharMatcher;->a(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-direct {v1, p0, v0, v4}, Lcom/google/common/base/CharMatcher$1;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 452
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/util/BitSet;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 498
    const v0, 0xffff

    :goto_0
    if-ltz v0, :cond_1

    .line 499
    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 498
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 503
    :cond_1
    return-void
.end method

.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 402
    new-instance v0, Lcom/google/common/base/CharMatcher$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$a;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public apply(Ljava/lang/Character;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 926
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 853
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v0, v1

    .line 854
    :goto_0
    if-ge v0, v3, :cond_3

    .line 855
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 856
    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 857
    if-ne v2, p2, :cond_2

    add-int/lit8 v2, v3, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 859
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 854
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 861
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 862
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 863
    add-int/lit8 v2, v0, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/base/CharMatcher;->a(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v0

    .line 868
    :goto_1
    return-object v0

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 619
    move v1, v0

    .line 620
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 621
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    add-int/lit8 v1, v1, 0x1

    .line 620
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_1
    return v1
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 3

    .prologue
    .line 586
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 587
    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    move v0, p2

    .line 588
    :goto_0
    if-ge v0, v1, :cond_1

    .line 589
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    :goto_1
    return v0

    .line 588
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .locals 2

    .prologue
    .line 607
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 608
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    :goto_1
    return v0

    .line 607
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 612
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public abstract matches(C)Z
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    .line 533
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 534
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    const/4 v0, 0x0

    .line 538
    :goto_1
    return v0

    .line 533
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 538
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public matchesAnyOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 395
    new-instance v0, Lcom/google/common/base/CharMatcher$v;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$v;-><init>(Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 409
    new-instance v0, Lcom/google/common/base/CharMatcher$y;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$y;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 422
    invoke-static {p0}, Lgu;->a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 638
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 640
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 663
    :goto_0
    return-object v0

    .line 644
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 645
    const/4 v0, 0x1

    .line 650
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 652
    :goto_2
    array-length v2, v3

    if-ne v1, v2, :cond_1

    .line 663
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    sub-int v0, v1, v0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v2

    goto :goto_0

    .line 655
    :cond_1
    aget-char v2, v3, v1

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 658
    :cond_2
    sub-int v2, v1, v0

    aget-char v4, v3, v1

    aput-char v4, v3, v2

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 698
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 700
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 710
    :goto_0
    return-object v0

    .line 703
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 704
    aput-char p2, v2, v1

    .line 705
    add-int/lit8 v0, v1, 0x1

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_2

    .line 706
    aget-char v1, v2, v0

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    aput-char p2, v2, v0

    .line 705
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 710
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 731
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 732
    if-nez v1, :cond_0

    .line 733
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 757
    :goto_0
    return-object v0

    .line 735
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 736
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 739
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 740
    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 741
    if-ne v1, v6, :cond_2

    move-object v0, v2

    .line 742
    goto :goto_0

    .line 745
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 746
    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v3, 0x3

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 750
    :cond_3
    invoke-virtual {v4, v2, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 752
    add-int/lit8 v0, v1, 0x1

    .line 753
    invoke-virtual {p0, v2, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 754
    if-ne v1, v6, :cond_3

    .line 756
    invoke-virtual {v4, v2, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 879
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 881
    add-int/lit8 v0, v1, -0x1

    move v2, v6

    .line 883
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 884
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 887
    :cond_0
    :goto_1
    if-le v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 888
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 891
    :cond_1
    if-nez v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 892
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 893
    :goto_2
    return-object v0

    .line 892
    :cond_2
    add-int/lit8 v3, v0, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v2

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 893
    invoke-direct/range {v0 .. v6}, Lcom/google/common/base/CharMatcher;->a(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 776
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 780
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 781
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 785
    :cond_0
    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-le v0, v1, :cond_1

    .line 786
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 791
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 780
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 785
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 804
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 805
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 806
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 807
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    :goto_1
    return-object v0

    .line 805
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 823
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 824
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 825
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 826
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    :goto_1
    return-object v0

    .line 824
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 829
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
