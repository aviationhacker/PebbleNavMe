.class public Lorg/apache/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field private static final a:Ljava/util/regex/Pattern;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/util/regex/Pattern;

.field private static e:Z

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/Object;

.field private static final h:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 147
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringUtils;->a:Ljava/util/regex/Pattern;

    .line 704
    sput-boolean v6, Lorg/apache/commons/lang3/StringUtils;->b:Z

    .line 705
    sput-object v1, Lorg/apache/commons/lang3/StringUtils;->c:Ljava/lang/reflect/Method;

    .line 706
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringUtils;->d:Ljava/util/regex/Pattern;

    .line 708
    sput-boolean v6, Lorg/apache/commons/lang3/StringUtils;->e:Z

    .line 709
    sput-object v1, Lorg/apache/commons/lang3/StringUtils;->f:Ljava/lang/reflect/Method;

    .line 710
    sput-object v1, Lorg/apache/commons/lang3/StringUtils;->g:Ljava/lang/Object;

    .line 711
    sget-object v0, Lorg/apache/commons/lang3/StringUtils;->d:Ljava/util/regex/Pattern;

    sput-object v0, Lorg/apache/commons/lang3/StringUtils;->h:Ljava/util/regex/Pattern;

    .line 717
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "java.text.Normalizer$Form"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 719
    const-string v1, "NFD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang3/StringUtils;->g:Ljava/lang/Object;

    .line 720
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "java.text.Normalizer"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 722
    const-string v2, "normalize"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringUtils;->f:Ljava/lang/reflect/Method;

    .line 724
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/commons/lang3/StringUtils;->e:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 737
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "sun.text.Normalizer"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 739
    const-string v1, "decompose"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringUtils;->c:Ljava/lang/reflect/Method;

    .line 741
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/commons/lang3/StringUtils;->b:Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5

    .line 747
    :goto_1
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    sput-boolean v6, Lorg/apache/commons/lang3/StringUtils;->e:Z

    goto :goto_0

    .line 727
    :catch_1
    move-exception v0

    .line 728
    sput-boolean v6, Lorg/apache/commons/lang3/StringUtils;->e:Z

    goto :goto_0

    .line 729
    :catch_2
    move-exception v0

    .line 730
    sput-boolean v6, Lorg/apache/commons/lang3/StringUtils;->e:Z

    goto :goto_0

    .line 731
    :catch_3
    move-exception v0

    .line 732
    sput-boolean v6, Lorg/apache/commons/lang3/StringUtils;->e:Z

    goto :goto_0

    .line 742
    :catch_4
    move-exception v0

    .line 743
    sput-boolean v6, Lorg/apache/commons/lang3/StringUtils;->b:Z

    goto :goto_1

    .line 744
    :catch_5
    move-exception v0

    .line 745
    sput-boolean v6, Lorg/apache/commons/lang3/StringUtils;->b:Z

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 991
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    move v0, v1

    .line 1010
    :cond_1
    :goto_0
    return v0

    .line 994
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 995
    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    .line 998
    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :cond_4
    move v2, v0

    .line 1000
    :goto_1
    if-eqz p3, :cond_5

    .line 1001
    add-int/lit8 v0, v1, -0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1005
    :goto_2
    if-ltz v0, :cond_1

    .line 1008
    add-int/lit8 v1, v2, 0x1

    .line 1009
    if-ge v1, p2, :cond_1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 1003
    :cond_5
    add-int/lit8 v0, v1, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_2
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 670
    sget-boolean v0, Lorg/apache/commons/lang3/StringUtils;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/StringUtils;->g:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 671
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "java.text.Normalizer is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_1
    sget-object v0, Lorg/apache/commons/lang3/StringUtils;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/apache/commons/lang3/StringUtils;->g:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 675
    sget-object v1, Lorg/apache/commons/lang3/StringUtils;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    return-object v0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 4025
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 4143
    :cond_0
    :goto_0
    return-object p0

    .line 4031
    :cond_1
    if-gez p4, :cond_2

    .line 4032
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeToLive of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4035
    :cond_2
    array-length v7, p1

    .line 4036
    array-length v0, p2

    .line 4039
    if-eq v7, v0, :cond_3

    .line 4040
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Search and Replace array lengths don\'t match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4047
    :cond_3
    new-array v8, v7, [Z

    move v1, v4

    move v0, v5

    move v2, v5

    .line 4056
    :goto_1
    if-ge v1, v7, :cond_8

    .line 4057
    aget-boolean v3, v8, v1

    if-nez v3, :cond_4

    aget-object v3, p1, v1

    if-eqz v3, :cond_4

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    aget-object v3, p2, v1

    if-nez v3, :cond_5

    .line 4056
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4061
    :cond_5
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 4064
    if-ne v3, v5, :cond_6

    .line 4065
    aput-boolean v10, v8, v1

    goto :goto_2

    .line 4067
    :cond_6
    if-eq v2, v5, :cond_7

    if-ge v3, v2, :cond_4

    :cond_7
    move v0, v1

    move v2, v3

    .line 4069
    goto :goto_2

    .line 4076
    :cond_8
    if-eq v2, v5, :cond_0

    move v1, v4

    move v3, v4

    .line 4086
    :goto_3
    array-length v6, p1

    if-ge v1, v6, :cond_b

    .line 4087
    aget-object v6, p1, v1

    if-eqz v6, :cond_9

    aget-object v6, p2, v1

    if-nez v6, :cond_a

    .line 4086
    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4090
    :cond_a
    aget-object v6, p2, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    aget-object v9, p1, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v6, v9

    .line 4091
    if-lez v6, :cond_9

    .line 4092
    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v3, v6

    goto :goto_4

    .line 4096
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4098
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    move v0, v4

    .line 4100
    :goto_5
    if-eq v2, v5, :cond_12

    .line 4102
    :goto_6
    if-ge v0, v2, :cond_c

    .line 4103
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4102
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4105
    :cond_c
    aget-object v0, p2, v1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4107
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v6, v2, v0

    move v1, v4

    move v0, v5

    move v2, v5

    .line 4114
    :goto_7
    if-ge v1, v7, :cond_11

    .line 4115
    aget-boolean v3, v8, v1

    if-nez v3, :cond_d

    aget-object v3, p1, v1

    if-eqz v3, :cond_d

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    aget-object v3, p2, v1

    if-nez v3, :cond_e

    .line 4114
    :cond_d
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4119
    :cond_e
    aget-object v3, p1, v1

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 4122
    if-ne v3, v5, :cond_f

    .line 4123
    aput-boolean v10, v8, v1

    goto :goto_8

    .line 4125
    :cond_f
    if-eq v2, v5, :cond_10

    if-ge v3, v2, :cond_d

    :cond_10
    move v0, v1

    move v2, v3

    .line 4127
    goto :goto_8

    :cond_11
    move v1, v0

    move v0, v6

    .line 4114
    goto :goto_5

    .line 4134
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4135
    :goto_9
    if-ge v0, v1, :cond_13

    .line 4136
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4135
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4138
    :cond_13
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4139
    if-eqz p3, :cond_0

    .line 4143
    add-int/lit8 v0, p4, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 6363
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 6364
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 6369
    :cond_1
    :goto_0
    return v2

    .line 6366
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 6369
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2901
    if-nez p0, :cond_0

    .line 2902
    const/4 v0, 0x0

    .line 2929
    :goto_0
    return-object v0

    .line 2904
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 2905
    if-nez v6, :cond_1

    .line 2906
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2908
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    move v2, v3

    move v4, v3

    move v5, v3

    .line 2912
    :goto_1
    if-ge v5, v6, :cond_5

    .line 2913
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, p1, :cond_4

    .line 2914
    if-nez v2, :cond_2

    if-eqz p2, :cond_3

    .line 2915
    :cond_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v2, v3

    .line 2919
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .line 2920
    goto :goto_1

    .line 2924
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v2, v1

    move v5, v0

    move v0, v3

    goto :goto_1

    .line 2926
    :cond_5
    if-nez v2, :cond_6

    if-eqz p2, :cond_7

    if-eqz v0, :cond_7

    .line 2927
    :cond_6
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2929
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2757
    if-nez p0, :cond_0

    .line 2818
    :goto_0
    return-object v0

    .line 2761
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2763
    if-nez v1, :cond_1

    .line 2764
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2767
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2769
    :cond_2
    invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2772
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 2774
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    move v3, v2

    .line 2778
    :goto_1
    if-ge v0, v1, :cond_9

    .line 2779
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 2781
    const/4 v4, -0x1

    if-le v0, v4, :cond_8

    .line 2782
    if-le v0, v3, :cond_5

    .line 2783
    add-int/lit8 v4, v2, 0x1

    .line 2785
    if-ne v4, p2, :cond_4

    .line 2787
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v2, v4

    goto :goto_1

    .line 2791
    :cond_4
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2796
    add-int v2, v0, v5

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 2800
    :cond_5
    if-eqz p3, :cond_6

    .line 2801
    add-int/lit8 v2, v2, 0x1

    .line 2802
    if-ne v2, p2, :cond_7

    .line 2804
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 2809
    :cond_6
    :goto_2
    add-int v3, v0, v5

    goto :goto_1

    .line 2806
    :cond_7
    const-string v3, ""

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2813
    :cond_8
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 2814
    goto :goto_1

    .line 2818
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 3174
    if-nez p0, :cond_0

    .line 3175
    const/4 v0, 0x0

    .line 3202
    :goto_0
    return-object v0

    .line 3177
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3178
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 3180
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 3181
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3182
    const/4 v2, 0x0

    .line 3183
    aget-char v0, v5, v2

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    move v3, v2

    move v2, v0

    move v0, v1

    .line 3184
    :goto_1
    array-length v4, v5

    if-ge v0, v4, :cond_5

    .line 3185
    aget-char v4, v5, v0

    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v4

    .line 3186
    if-ne v4, v2, :cond_2

    .line 3184
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3189
    :cond_2
    if-eqz p1, :cond_4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    if-ne v2, v1, :cond_4

    .line 3190
    add-int/lit8 v2, v0, -0x1

    .line 3191
    if-eq v2, v3, :cond_3

    .line 3192
    new-instance v7, Ljava/lang/String;

    sub-int v8, v2, v3

    invoke-direct {v7, v5, v3, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    :cond_3
    :goto_3
    move v2, v4

    .line 3199
    goto :goto_2

    .line 3196
    :cond_4
    new-instance v2, Ljava/lang/String;

    sub-int v7, v0, v3

    invoke-direct {v2, v5, v3, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v0

    .line 3197
    goto :goto_3

    .line 3201
    :cond_5
    new-instance v0, Ljava/lang/String;

    array-length v1, v5

    sub-int/2addr v1, v3

    invoke-direct {v0, v5, v3, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3202
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5674
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 5713
    if-nez p0, :cond_1

    .line 5714
    const/4 p0, 0x0

    .line 5738
    :cond_0
    :goto_0
    return-object p0

    .line 5716
    :cond_1
    if-ge p2, v2, :cond_2

    .line 5717
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width is 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5719
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 5722
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 5723
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 5725
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v1, p2, -0x3

    if-ge v0, v1, :cond_4

    .line 5726
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p2, -0x3

    sub-int p1, v0, v1

    .line 5728
    :cond_4
    const-string v0, "..."

    .line 5729
    if-gt p1, v2, :cond_5

    .line 5730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5732
    :cond_5
    const/4 v0, 0x7

    if-ge p2, v0, :cond_6

    .line 5733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width with offset is 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5735
    :cond_6
    add-int/lit8 v0, p2, -0x3

    add-int/2addr v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 5736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, -0x3

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5738
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 5771
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5788
    :cond_0
    :goto_0
    return-object p0

    .line 5775
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-lt p2, v0, :cond_0

    .line 5779
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    .line 5780
    div-int/lit8 v1, v0, 0x2

    rem-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 5781
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    .line 5783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5784
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5785
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5786
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5788
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 694
    sget-boolean v0, Lorg/apache/commons/lang3/StringUtils;->b:Z

    if-nez v0, :cond_0

    .line 695
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sun.text.Normalizer is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/StringUtils;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 699
    sget-object v1, Lorg/apache/commons/lang3/StringUtils;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    return-object v0
.end method

.method private static b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 6472
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 6473
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v4, 0x1

    .line 6479
    :cond_1
    :goto_0
    return v4

    .line 6475
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 6478
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v2, v0, v1

    .line 6479
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v4

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3028
    if-nez p0, :cond_0

    .line 3029
    const/4 v0, 0x0

    .line 3105
    :goto_0
    return-object v0

    .line 3031
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 3032
    if-nez v4, :cond_1

    .line 3033
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 3035
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3040
    if-nez p1, :cond_4

    move v3, v1

    move v5, v1

    move v7, v1

    move v0, v1

    move v6, v2

    .line 3042
    :goto_1
    if-ge v0, v4, :cond_e

    .line 3043
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3044
    if-nez v5, :cond_2

    if-eqz p3, :cond_13

    .line 3046
    :cond_2
    add-int/lit8 v5, v6, 0x1

    if-ne v6, p2, :cond_12

    move v0, v1

    move v3, v4

    .line 3050
    :goto_2
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    move v5, v3

    move v3, v1

    .line 3053
    :goto_3
    add-int/lit8 v7, v5, 0x1

    move v5, v3

    move v3, v0

    move v0, v7

    .line 3054
    goto :goto_1

    .line 3058
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v5, v2

    goto :goto_1

    .line 3060
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 3062
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v3, v1

    move v5, v1

    move v7, v1

    move v0, v1

    move v6, v2

    .line 3063
    :goto_4
    if-ge v0, v4, :cond_7

    .line 3064
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_6

    .line 3065
    if-nez v5, :cond_5

    if-eqz p3, :cond_10

    .line 3067
    :cond_5
    add-int/lit8 v5, v6, 0x1

    if-ne v6, p2, :cond_f

    move v0, v1

    move v3, v4

    .line 3071
    :goto_5
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    move v5, v3

    move v3, v1

    .line 3074
    :goto_6
    add-int/lit8 v7, v5, 0x1

    move v5, v3

    move v3, v0

    move v0, v7

    .line 3075
    goto :goto_4

    .line 3079
    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v5, v2

    goto :goto_4

    :cond_7
    move v1, v0

    move v0, v7

    .line 3102
    :goto_7
    if-nez v5, :cond_8

    if-eqz p3, :cond_9

    if-eqz v3, :cond_9

    .line 3103
    :cond_8
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3105
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto/16 :goto_0

    .line 3083
    :goto_8
    if-ge v0, v4, :cond_e

    .line 3084
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_b

    .line 3085
    if-nez v5, :cond_a

    if-eqz p3, :cond_d

    .line 3087
    :cond_a
    add-int/lit8 v5, v6, 0x1

    if-ne v6, p2, :cond_c

    move v0, v1

    move v3, v4

    .line 3091
    :goto_9
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    move v5, v3

    move v3, v1

    .line 3094
    :goto_a
    add-int/lit8 v7, v5, 0x1

    move v5, v3

    move v3, v0

    move v0, v7

    .line 3095
    goto :goto_8

    .line 3099
    :cond_b
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v5, v2

    goto :goto_8

    :cond_c
    move v3, v0

    move v0, v2

    goto :goto_9

    :cond_d
    move v11, v3

    move v3, v5

    move v5, v0

    move v0, v11

    goto :goto_a

    :cond_e
    move v1, v0

    move v0, v7

    goto :goto_7

    :cond_f
    move v3, v0

    move v0, v2

    goto :goto_5

    :cond_10
    move v11, v3

    move v3, v5

    move v5, v0

    move v0, v11

    goto :goto_6

    :cond_11
    move v3, v1

    move v5, v1

    move v7, v1

    move v0, v1

    move v6, v2

    goto :goto_8

    :cond_12
    move v3, v0

    move v0, v2

    goto/16 :goto_2

    :cond_13
    move v11, v3

    move v3, v5

    move v5, v0

    move v0, v11

    goto/16 :goto_3
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 5029
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 5032
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4823
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4851
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 4861
    :cond_0
    :goto_0
    return-object p0

    .line 4854
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4855
    sub-int v1, p1, v0

    .line 4856
    if-lez v1, :cond_0

    .line 4859
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 4860
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4891
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 4904
    :cond_0
    :goto_0
    return-object p0

    .line 4894
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4895
    const-string p2, " "

    .line 4897
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4898
    sub-int v1, p1, v0

    .line 4899
    if-lez v1, :cond_0

    .line 4902
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4903
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/16 v2, 0xd

    .line 4331
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4353
    :cond_0
    :goto_0
    return-object p0

    .line 4335
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 4336
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4337
    if-eq v0, v2, :cond_2

    if-ne v0, v4, :cond_0

    .line 4338
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 4343
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4344
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4346
    if-ne v1, v4, :cond_5

    .line 4347
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    .line 4348
    add-int/lit8 v0, v0, -0x1

    .line 4353
    :cond_4
    :goto_1
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4350
    :cond_5
    if-eq v1, v2, :cond_4

    .line 4351
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 4383
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 4389
    :cond_0
    :goto_0
    return-object p0

    .line 4386
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4387
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4418
    if-nez p0, :cond_1

    .line 4419
    const/4 v0, 0x0

    .line 4433
    :cond_0
    :goto_0
    return-object v0

    .line 4421
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4422
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 4423
    const-string v0, ""

    goto :goto_0

    .line 4425
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 4426
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4427
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4428
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 4429
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 4430
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1368
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1397
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 1629
    if-nez p1, :cond_0

    .line 1630
    const/4 v0, 0x0

    .line 1632
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1571
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 1597
    :cond_1
    :goto_0
    return v0

    .line 1574
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1575
    array-length v5, p1

    .line 1576
    add-int/lit8 v6, v4, -0x1

    .line 1577
    add-int/lit8 v7, v5, -0x1

    move v3, v1

    .line 1578
    :goto_1
    if-ge v3, v4, :cond_5

    .line 1579
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move v2, v1

    .line 1580
    :goto_2
    if-ge v2, v5, :cond_4

    .line 1581
    aget-char v9, p1, v2

    if-ne v9, v8, :cond_3

    .line 1582
    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1583
    if-eq v2, v7, :cond_1

    .line 1587
    if-ge v3, v6, :cond_3

    add-int/lit8 v9, v2, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1580
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1578
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1597
    goto :goto_0
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1428
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return v4

    .line 1431
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1432
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v6, v0, v5

    move v2, v4

    .line 1433
    :goto_1
    if-gt v2, v6, :cond_0

    move-object v0, p0

    move-object v3, p1

    .line 1434
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v1

    .line 1435
    goto :goto_0

    .line 1433
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1880
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1881
    :cond_0
    const/4 v0, 0x1

    .line 1883
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1827
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 1853
    :cond_1
    :goto_0
    return v0

    .line 1830
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1831
    add-int/lit8 v5, v4, -0x1

    .line 1832
    array-length v6, p1

    .line 1833
    add-int/lit8 v7, v6, -0x1

    move v3, v0

    .line 1834
    :goto_1
    if-ge v3, v4, :cond_5

    .line 1835
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move v2, v0

    .line 1836
    :goto_2
    if-ge v2, v6, :cond_4

    .line 1837
    aget-char v9, p1, v2

    if-ne v9, v8, :cond_3

    .line 1838
    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1839
    if-eq v2, v7, :cond_1

    .line 1843
    if-ge v3, v5, :cond_3

    add-int/lit8 v9, v2, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1836
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1834
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1853
    goto :goto_0
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1795
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1796
    :cond_0
    const/4 v0, 0x0

    .line 1798
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1759
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 1768
    :cond_1
    :goto_0
    return v0

    .line 1762
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1765
    array-length v2, p1

    if-nez v2, :cond_3

    move v0, v1

    .line 1766
    goto :goto_0

    .line 1768
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1451
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return v0

    .line 1454
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 1455
    :goto_1
    if-ge v1, v2, :cond_0

    .line 1456
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1457
    const/4 v0, 0x1

    goto :goto_0

    .line 1455
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5139
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v0

    .line 5148
    :cond_1
    return v1

    :cond_2
    move v1, v0

    .line 5144
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 5145
    add-int/lit8 v1, v1, 0x1

    .line 5146
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 5562
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 5583
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5519
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 5540
    if-nez p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 3545
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3559
    :cond_0
    :goto_0
    return-object p0

    .line 3548
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 3549
    new-array v5, v4, [C

    move v2, v3

    move v1, v3

    .line 3551
    :goto_1
    if-ge v2, v4, :cond_2

    .line 3552
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3553
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v1

    .line 3551
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 3556
    :cond_2
    if-eq v1, v4, :cond_0

    .line 3559
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5, v3, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 5819
    if-nez p0, :cond_0

    .line 5829
    :goto_0
    return-object p1

    .line 5822
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 5823
    goto :goto_0

    .line 5825
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 5826
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 5827
    const-string p1, ""

    goto :goto_0

    .line 5829
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 6430
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6549
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6557
    :cond_0
    :goto_0
    return v0

    .line 6552
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 6553
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6554
    const/4 v0, 0x1

    goto :goto_0

    .line 6552
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 6457
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 773
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 798
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 799
    :cond_0
    if-ne p0, p1, :cond_1

    .line 801
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 799
    goto :goto_0

    .line 801
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    goto :goto_0
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6000
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 6001
    :cond_0
    const-string v0, ""

    .line 6015
    :goto_0
    return-object v0

    .line 6003
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v0

    .line 6004
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 6006
    aget-object v0, p0, v2

    if-nez v0, :cond_2

    .line 6007
    const-string v0, ""

    goto :goto_0

    .line 6009
    :cond_2
    aget-object v0, p0, v2

    goto :goto_0

    .line 6010
    :cond_3
    if-nez v0, :cond_4

    .line 6012
    const-string v0, ""

    goto :goto_0

    .line 6015
    :cond_4
    aget-object v1, p0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 14

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6058
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6059
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6079
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6080
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6082
    if-nez v0, :cond_2

    .line 6131
    :goto_0
    return v1

    .line 6084
    :cond_2
    if-nez v1, :cond_3

    move v1, v0

    .line 6085
    goto :goto_0

    .line 6088
    :cond_3
    if-le v0, v1, :cond_8

    .line 6094
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6097
    :goto_1
    add-int/lit8 v2, v1, 0x1

    new-array v8, v2, [I

    .line 6098
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    move v5, v3

    .line 6109
    :goto_2
    if-gt v5, v1, :cond_4

    .line 6110
    aput v5, v8, v5

    .line 6109
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v6, v4

    move-object v7, v2

    .line 6113
    :goto_3
    if-gt v6, v0, :cond_7

    .line 6114
    add-int/lit8 v2, v6, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 6115
    aput v6, v7, v3

    move v5, v4

    .line 6117
    :goto_4
    if-gt v5, v1, :cond_6

    .line 6118
    add-int/lit8 v2, v5, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_5

    move v2, v3

    .line 6120
    :goto_5
    add-int/lit8 v10, v5, -0x1

    aget v10, v7, v10

    add-int/lit8 v10, v10, 0x1

    aget v11, v8, v5

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v11, v5, -0x1

    aget v11, v8, v11

    add-int/2addr v2, v11

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v7, v5

    .line 6117
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_4

    :cond_5
    move v2, v4

    .line 6118
    goto :goto_5

    .line 6113
    :cond_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    goto :goto_3

    .line 6131
    :cond_7
    aget v1, v8, v1

    goto :goto_0

    :cond_8
    move v12, v1

    move v1, v0

    move v0, v12

    move-object v13, p1

    move-object p1, p0

    move-object p0, v13

    goto :goto_1
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 11

    .prologue
    .line 6167
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6170
    :cond_1
    if-gez p2, :cond_2

    .line 6171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6218
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6219
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6222
    if-nez v1, :cond_4

    .line 6223
    if-gt v0, p2, :cond_3

    .line 6292
    :goto_0
    return v0

    .line 6223
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 6224
    :cond_4
    if-nez v0, :cond_6

    .line 6225
    if-gt v1, p2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0

    .line 6228
    :cond_6
    if-le v1, v0, :cond_e

    .line 6234
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v10, v1

    move v1, v0

    move v0, v10

    .line 6237
    :goto_1
    add-int/lit8 v2, v1, 0x1

    new-array v5, v2, [I

    .line 6238
    add-int/lit8 v2, v1, 0x1

    new-array v3, v2, [I

    .line 6242
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    .line 6243
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_7

    .line 6244
    aput v2, v5, v2

    .line 6243
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6248
    :cond_7
    array-length v2, v5

    const v6, 0x7fffffff

    invoke-static {v5, v4, v2, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 6249
    const v2, 0x7fffffff

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    .line 6252
    const/4 v2, 0x1

    move-object v4, v3

    move v3, v2

    :goto_3
    if-gt v3, v0, :cond_c

    .line 6253
    add-int/lit8 v2, v3, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 6254
    const/4 v2, 0x0

    aput v3, v4, v2

    .line 6257
    const/4 v2, 0x1

    sub-int v7, v3, p2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6258
    add-int v7, v3, p2

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 6261
    if-le v2, v7, :cond_8

    .line 6262
    const/4 v0, -0x1

    goto :goto_0

    .line 6266
    :cond_8
    const/4 v8, 0x1

    if-le v2, v8, :cond_9

    .line 6267
    add-int/lit8 v8, v2, -0x1

    const v9, 0x7fffffff

    aput v9, v4, v8

    .line 6271
    :cond_9
    :goto_4
    if-gt v2, v7, :cond_b

    .line 6272
    add-int/lit8 v8, v2, -0x1

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_a

    .line 6274
    add-int/lit8 v8, v2, -0x1

    aget v8, v5, v8

    aput v8, v4, v2

    .line 6271
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 6277
    :cond_a
    add-int/lit8 v8, v2, -0x1

    aget v8, v4, v8

    aget v9, v5, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v9, v2, -0x1

    aget v9, v5, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aput v8, v4, v2

    goto :goto_5

    .line 6252
    :cond_b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    goto :goto_3

    .line 6289
    :cond_c
    aget v0, v5, v1

    if-gt v0, p2, :cond_d

    .line 6290
    aget v0, v5, v1

    goto/16 :goto_0

    .line 6292
    :cond_d
    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_e
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto/16 :goto_1
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 828
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    const/4 v0, -0x1

    .line 831
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .locals 1

    .prologue
    .line 861
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    const/4 v0, -0x1

    .line 864
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 892
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 893
    :cond_0
    const/4 v0, -0x1

    .line 895
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 932
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 933
    :cond_0
    const/4 v0, -0x1

    .line 935
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1538
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1539
    :cond_0
    const/4 v0, -0x1

    .line 1541
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 1489
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 1511
    :cond_1
    :goto_0
    return v0

    .line 1492
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1493
    add-int/lit8 v5, v4, -0x1

    .line 1494
    array-length v6, p1

    .line 1495
    add-int/lit8 v7, v6, -0x1

    move v0, v3

    .line 1496
    :goto_1
    if-ge v0, v4, :cond_5

    .line 1497
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move v2, v3

    .line 1498
    :goto_2
    if-ge v2, v6, :cond_4

    .line 1499
    aget-char v9, p1, v2

    if-ne v9, v8, :cond_3

    .line 1500
    if-ge v0, v5, :cond_1

    if-ge v2, v7, :cond_1

    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1502
    add-int/lit8 v9, v2, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v0, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1498
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1496
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1511
    goto :goto_0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 7

    .prologue
    const v5, 0x7fffffff

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 1916
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v2

    .line 1940
    :cond_1
    :goto_0
    return v0

    .line 1919
    :cond_2
    array-length v6, p1

    move v3, v4

    move v0, v5

    .line 1925
    :goto_1
    if-ge v3, v6, :cond_5

    .line 1926
    aget-object v1, p1, v3

    .line 1927
    if-nez v1, :cond_4

    .line 1925
    :cond_3
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 1930
    :cond_4
    invoke-static {p0, v1, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1931
    if-eq v1, v2, :cond_3

    .line 1935
    if-ge v1, v0, :cond_3

    move v0, v1

    .line 1936
    goto :goto_2

    .line 1940
    :cond_5
    if-ne v0, v5, :cond_1

    move v0, v2

    goto :goto_0
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1712
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 1730
    :cond_1
    :goto_0
    return v0

    .line 1715
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v0, v3

    .line 1716
    :goto_1
    if-ge v0, v4, :cond_6

    .line 1717
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1718
    invoke-static {p1, v5, v3}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;II)I

    move-result v2

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    .line 1719
    :goto_2
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v4, :cond_5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1720
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1721
    if-eqz v2, :cond_3

    invoke-static {p1, v5, v3}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;II)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1716
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 1718
    goto :goto_2

    .line 1725
    :cond_5
    if-nez v2, :cond_3

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1730
    goto :goto_0
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 1662
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 1685
    :cond_1
    :goto_0
    return v0

    .line 1665
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1666
    add-int/lit8 v5, v4, -0x1

    .line 1667
    array-length v6, p1

    .line 1668
    add-int/lit8 v7, v6, -0x1

    move v0, v3

    .line 1670
    :goto_1
    if-ge v0, v4, :cond_5

    .line 1671
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move v2, v3

    .line 1672
    :goto_2
    if-ge v2, v6, :cond_1

    .line 1673
    aget-char v9, p1, v2

    if-ne v9, v8, :cond_4

    .line 1674
    if-ge v0, v5, :cond_3

    if-ge v2, v7, :cond_3

    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1675
    add-int/lit8 v9, v2, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v0, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_4

    .line 1670
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1672
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 1685
    goto :goto_0
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 5858
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 5873
    :cond_0
    :goto_0
    return v0

    .line 5861
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 5865
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5866
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_3

    .line 5870
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 5873
    goto :goto_0

    .line 5865
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 5909
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gt v0, v5, :cond_2

    :cond_0
    move v2, v6

    .line 5963
    :cond_1
    :goto_0
    return v2

    .line 5914
    :cond_2
    array-length v8, p0

    .line 5915
    const v4, 0x7fffffff

    move v7, v2

    move v0, v2

    move v1, v5

    move v3, v2

    .line 5921
    :goto_1
    if-ge v7, v8, :cond_4

    .line 5922
    aget-object v9, p0, v7

    if-nez v9, :cond_3

    move v3, v1

    move v4, v5

    move v1, v2

    .line 5921
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v11, v1

    move v1, v3

    move v3, v4

    move v4, v11

    goto :goto_1

    .line 5927
    :cond_3
    aget-object v1, p0, v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5928
    aget-object v4, p0, v7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v3

    move v3, v2

    goto :goto_2

    .line 5933
    :cond_4
    if-nez v1, :cond_5

    if-nez v0, :cond_6

    if-nez v3, :cond_6

    :cond_5
    move v2, v6

    .line 5934
    goto :goto_0

    .line 5938
    :cond_6
    if-eqz v4, :cond_1

    move v3, v2

    move v1, v6

    .line 5944
    :goto_3
    if-ge v3, v4, :cond_a

    .line 5945
    aget-object v7, p0, v2

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v7, v5

    .line 5946
    :goto_4
    if-ge v7, v8, :cond_7

    .line 5947
    aget-object v10, p0, v7

    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v10, v9, :cond_8

    move v1, v3

    .line 5952
    :cond_7
    if-eq v1, v6, :cond_9

    move v2, v1

    .line 5957
    :goto_5
    if-ne v2, v6, :cond_1

    if-eq v4, v0, :cond_1

    move v2, v4

    .line 5961
    goto :goto_0

    .line 5946
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 5944
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move v2, v1

    goto :goto_5
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1075
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move p2, v6

    .line 1093
    :cond_1
    :goto_0
    return p2

    .line 1078
    :cond_2
    if-gez p2, :cond_3

    move p2, v4

    .line 1081
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    .line 1082
    if-le p2, v7, :cond_4

    move p2, v6

    .line 1083
    goto :goto_0

    .line 1085
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    move v2, p2

    .line 1088
    :goto_1
    if-ge v2, v7, :cond_6

    .line 1089
    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_5

    move p2, v2

    .line 1090
    goto :goto_0

    .line 1088
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move p2, v6

    .line 1093
    goto :goto_0
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5456
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5465
    :cond_0
    :goto_0
    return v0

    .line 5459
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5460
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5461
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5460
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5465
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5488
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5497
    :cond_0
    :goto_0
    return v0

    .line 5491
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5492
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5493
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5492
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5497
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5174
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 5183
    :cond_0
    :goto_0
    return v0

    .line 5177
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5178
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5179
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5183
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 5209
    if-nez p0, :cond_1

    .line 5218
    :cond_0
    :goto_0
    return v0

    .line 5212
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5213
    :goto_1
    if-ge v1, v2, :cond_3

    .line 5214
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5213
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5218
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5244
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 5253
    :cond_0
    :goto_0
    return v0

    .line 5247
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5248
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5249
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5253
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 5279
    if-nez p0, :cond_1

    .line 5288
    :cond_0
    :goto_0
    return v0

    .line 5282
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5283
    :goto_1
    if-ge v1, v2, :cond_3

    .line 5284
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5283
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5288
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5318
    if-nez p0, :cond_1

    .line 5327
    :cond_0
    :goto_0
    return v0

    .line 5321
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5322
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5323
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5327
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 223
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    .line 231
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    .line 226
    :goto_1
    if-ge v2, v3, :cond_3

    .line 227
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 231
    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 183
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 252
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 202
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5354
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 5363
    :cond_0
    :goto_0
    return v0

    .line 5357
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5358
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5359
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5358
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5363
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 5391
    if-nez p0, :cond_1

    .line 5400
    :cond_0
    :goto_0
    return v0

    .line 5394
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5395
    :goto_1
    if-ge v1, v2, :cond_3

    .line 5396
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 5395
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5400
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5424
    if-nez p0, :cond_1

    .line 5433
    :cond_0
    :goto_0
    return v0

    .line 5427
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 5428
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5429
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5428
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5433
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3501
    if-nez p0, :cond_0

    .line 3502
    const/4 v0, 0x0

    .line 3504
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3522
    if-nez p0, :cond_0

    .line 3523
    const/4 v0, 0x0

    .line 3525
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3413
    if-nez p0, :cond_0

    .line 3414
    const/4 v0, 0x0

    .line 3438
    :goto_0
    return-object v0

    .line 3416
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3417
    const-string v0, ""

    goto :goto_0

    .line 3419
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3420
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3421
    invoke-static {v0}, Lorg/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3425
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3426
    if-eqz v0, :cond_3

    .line 3427
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3430
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3431
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3432
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3433
    if-eqz v0, :cond_3

    .line 3434
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3438
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3457
    if-nez p0, :cond_0

    .line 3458
    const/4 v0, 0x0

    .line 3483
    :goto_0
    return-object v0

    .line 3460
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3461
    const-string v0, ""

    goto :goto_0

    .line 3463
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3464
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3465
    invoke-static {v0}, Lorg/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3469
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3470
    if-eqz v0, :cond_3

    .line 3471
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3474
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3475
    if-eqz p1, :cond_4

    .line 3476
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3478
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3479
    if-eqz v0, :cond_3

    .line 3480
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3483
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3230
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3256
    if-nez p0, :cond_0

    .line 3257
    const/4 v0, 0x0

    .line 3260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3290
    if-nez p0, :cond_0

    .line 3291
    const/4 v0, 0x0

    .line 3308
    :goto_0
    return-object v0

    .line 3293
    :cond_0
    sub-int v0, p3, p2

    .line 3294
    if-gtz v0, :cond_1

    .line 3295
    const-string v0, ""

    goto :goto_0

    .line 3298
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    .line 3300
    :goto_1
    if-ge v0, p3, :cond_4

    .line 3301
    if-le v0, p2, :cond_2

    .line 3302
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3304
    :cond_2
    aget-object v2, p0, v0

    if-eqz v2, :cond_3

    .line 3305
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3300
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3308
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3335
    if-nez p0, :cond_0

    .line 3336
    const/4 v0, 0x0

    .line 3338
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3369
    if-nez p0, :cond_0

    .line 3370
    const/4 v0, 0x0

    .line 3393
    :goto_0
    return-object v0

    .line 3372
    :cond_0
    if-nez p1, :cond_1

    .line 3373
    const-string p1, ""

    .line 3378
    :cond_1
    sub-int v0, p3, p2

    .line 3379
    if-gtz v0, :cond_2

    .line 3380
    const-string v0, ""

    goto :goto_0

    .line 3383
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p2

    .line 3385
    :goto_1
    if-ge v0, p3, :cond_5

    .line 3386
    if-le v0, p2, :cond_3

    .line 3387
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3389
    :cond_3
    aget-object v2, p0, v0

    if-eqz v2, :cond_4

    .line 3390
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3385
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3393
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 1119
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    const/4 v0, -0x1

    .line 1122
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->b(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 1

    .prologue
    .line 1154
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    const/4 v0, -0x1

    .line 1157
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->b(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 1184
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1185
    :cond_0
    const/4 v0, -0x1

    .line 1187
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 1258
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1259
    :cond_0
    const/4 v0, -0x1

    .line 1261
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 1970
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1986
    :cond_0
    return v0

    .line 1973
    :cond_1
    array-length v3, p1

    .line 1976
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 1977
    aget-object v1, p1, v2

    .line 1978
    if-nez v1, :cond_3

    .line 1976
    :cond_2
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1981
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p0, v1, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1982
    if-le v1, v0, :cond_2

    move v0, v1

    .line 1983
    goto :goto_1
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 1288
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1289
    :cond_0
    const/4 v0, -0x1

    .line 1291
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1324
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v6

    .line 1342
    :cond_1
    :goto_0
    return v2

    .line 1327
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_5

    .line 1328
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v2, v0, v1

    .line 1330
    :goto_1
    if-gez v2, :cond_3

    move v2, v6

    .line 1331
    goto :goto_0

    .line 1333
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1337
    :goto_2
    if-ltz v2, :cond_4

    .line 1338
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1337
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    move v2, v6

    .line 1342
    goto :goto_0

    :cond_5
    move v2, p2

    goto :goto_1
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 1225
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2126
    if-nez p0, :cond_1

    .line 2127
    const/4 p0, 0x0

    .line 2135
    :cond_0
    :goto_0
    return-object p0

    .line 2129
    :cond_1
    if-gez p1, :cond_2

    .line 2130
    const-string p0, ""

    goto :goto_0

    .line 2132
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2135
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4690
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4715
    if-nez p0, :cond_1

    .line 4716
    const/4 p0, 0x0

    .line 4725
    :cond_0
    :goto_0
    return-object p0

    .line 4718
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 4719
    if-lez v0, :cond_0

    .line 4722
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 4723
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4725
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4752
    if-nez p0, :cond_1

    .line 4753
    const/4 p0, 0x0

    .line 4778
    :cond_0
    :goto_0
    return-object p0

    .line 4755
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4756
    const-string p2, " "

    .line 4758
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4759
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4760
    sub-int v2, p1, v2

    .line 4761
    if-lez v2, :cond_0

    .line 4764
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_3

    .line 4765
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4768
    :cond_3
    if-ne v2, v1, :cond_4

    .line 4769
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4770
    :cond_4
    if-ge v2, v1, :cond_5

    .line 4771
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4773
    :cond_5
    new-array v3, v2, [C

    .line 4774
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 4775
    :goto_1
    if-ge v0, v2, :cond_6

    .line 4776
    rem-int v5, v0, v1

    aget-char v5, v4, v5

    aput-char v5, v3, v0

    .line 4775
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4778
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 4794
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4978
    if-nez p0, :cond_0

    .line 4979
    const/4 v0, 0x0

    .line 4981
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5001
    if-nez p0, :cond_0

    .line 5002
    const/4 v0, 0x0

    .line 5004
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2197
    if-nez p0, :cond_0

    .line 2198
    const/4 v0, 0x0

    .line 2209
    :goto_0
    return-object v0

    .line 2200
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 2201
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 2203
    :cond_2
    if-gez p1, :cond_3

    .line 2204
    const/4 p1, 0x0

    .line 2206
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_4

    .line 2207
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2209
    :cond_4
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 6524
    if-nez p0, :cond_0

    .line 6525
    const/4 v0, 0x0

    .line 6527
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/StringUtils;->a:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 973
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 4272
    if-nez p0, :cond_0

    .line 4273
    const/4 v0, 0x0

    .line 4296
    :goto_0
    return-object v0

    .line 4275
    :cond_0
    if-nez p1, :cond_1

    .line 4276
    const-string p1, ""

    .line 4278
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4279
    if-gez p2, :cond_6

    move v0, v3

    .line 4282
    :goto_1
    if-le v0, v2, :cond_2

    move v0, v2

    .line 4285
    :cond_2
    if-gez p3, :cond_5

    move v1, v3

    .line 4288
    :goto_2
    if-le v1, v2, :cond_3

    move v1, v2

    .line 4291
    :cond_3
    if-le v0, v1, :cond_4

    .line 4296
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_3

    :cond_5
    move v1, p3

    goto :goto_2

    :cond_6
    move v0, p2

    goto :goto_1
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3753
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 3763
    :cond_0
    :goto_0
    return-object p0

    .line 3756
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 3758
    :goto_1
    array-length v3, v4

    if-ge v0, v3, :cond_3

    .line 3759
    aget-char v3, v4, v0

    if-eq v3, p1, :cond_2

    .line 3760
    add-int/lit8 v3, v2, 0x1

    aget-char v5, v4, v0

    aput-char v5, v4, v2

    move v2, v3

    .line 3758
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3763
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3727
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3730
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3658
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3664
    :cond_0
    :goto_0
    return-object p0

    .line 3661
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3662
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3694
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3700
    :cond_0
    :goto_0
    return-object p0

    .line 3697
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3698
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3589
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3595
    :cond_0
    :goto_0
    return-object p0

    .line 3592
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3593
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3624
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3630
    :cond_0
    :goto_0
    return-object p0

    .line 3627
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3628
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4551
    new-array v1, p1, [C

    .line 4552
    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4553
    aput-char p0, v1, v0

    .line 4552
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4555
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 4462
    if-nez p0, :cond_1

    .line 4463
    const/4 p0, 0x0

    .line 4494
    :cond_0
    :goto_0
    return-object p0

    .line 4465
    :cond_1
    if-gtz p1, :cond_2

    .line 4466
    const-string p0, ""

    goto :goto_0

    .line 4468
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4469
    if-eq p1, v3, :cond_0

    if-eqz v1, :cond_0

    .line 4472
    if-ne v1, v3, :cond_3

    const/16 v2, 0x2000

    if-gt p1, v2, :cond_3

    .line 4473
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4476
    :cond_3
    mul-int v2, v1, p1

    .line 4477
    packed-switch v1, :pswitch_data_0

    .line 4490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4491
    :goto_1
    if-ge v0, p1, :cond_5

    .line 4492
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4491
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4479
    :pswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4481
    :pswitch_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4482
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4483
    new-array v2, v2, [C

    .line 4484
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x2

    :goto_2
    if-ltz v0, :cond_4

    .line 4485
    aput-char v1, v2, v0

    .line 4486
    add-int/lit8 v4, v0, 0x1

    aput-char v3, v2, v4

    .line 4484
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 4488
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 4494
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4477
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4519
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4520
    :cond_0
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4524
    :goto_0
    return-object v0

    .line 4523
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4524
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3819
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v0, 0x40

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 3851
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3873
    :cond_0
    :goto_0
    return-object p0

    .line 3855
    :cond_1
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3856
    if-eq v1, v6, :cond_0

    .line 3859
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 3860
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 3861
    if-gez v3, :cond_2

    move v3, v2

    .line 3862
    :cond_2
    if-gez p3, :cond_5

    const/16 v0, 0x10

    :cond_3
    :goto_1
    mul-int/2addr v0, v3

    .line 3863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v2

    .line 3864
    :goto_2
    if-eq v1, v6, :cond_4

    .line 3865
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3866
    add-int v0, v1, v4

    .line 3867
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_6

    .line 3872
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3873
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3862
    :cond_5
    if-gt p3, v0, :cond_3

    move v0, p3

    goto :goto_1

    .line 3870
    :cond_6
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4169
    if-nez p0, :cond_0

    .line 4170
    const/4 v0, 0x0

    .line 4172
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 4212
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4237
    :cond_0
    :goto_0
    return-object p0

    .line 4215
    :cond_1
    if-nez p2, :cond_2

    .line 4216
    const-string p2, ""

    .line 4219
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 4221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    .line 4222
    :goto_1
    if-ge v1, v3, :cond_5

    .line 4223
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4224
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 4225
    if-ltz v6, :cond_4

    .line 4226
    const/4 v0, 0x1

    .line 4227
    if-ge v6, v2, :cond_3

    .line 4228
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4222
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4231
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4234
    :cond_5
    if-eqz v0, :cond_0

    .line 4235
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3916
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3967
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 3968
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3967
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3792
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5603
    if-nez p0, :cond_0

    .line 5604
    const/4 v0, 0x0

    .line 5606
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5629
    if-nez p0, :cond_0

    .line 5630
    const/4 v0, 0x0

    .line 5636
    :goto_0
    return-object v0

    .line 5634
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 5635
    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 5636
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2159
    if-nez p0, :cond_1

    .line 2160
    const/4 p0, 0x0

    .line 2168
    :cond_0
    :goto_0
    return-object p0

    .line 2162
    :cond_1
    if-gez p1, :cond_2

    .line 2163
    const-string p0, ""

    goto :goto_0

    .line 2165
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4578
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4603
    if-nez p0, :cond_1

    .line 4604
    const/4 p0, 0x0

    .line 4613
    :cond_0
    :goto_0
    return-object p0

    .line 4606
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 4607
    if-lez v0, :cond_0

    .line 4610
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 4611
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4613
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4640
    if-nez p0, :cond_1

    .line 4641
    const/4 p0, 0x0

    .line 4666
    :cond_0
    :goto_0
    return-object p0

    .line 4643
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4644
    const-string p2, " "

    .line 4646
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4647
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4648
    sub-int v2, p1, v2

    .line 4649
    if-lez v2, :cond_0

    .line 4652
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_3

    .line 4653
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4656
    :cond_3
    if-ne v2, v1, :cond_4

    .line 4657
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4658
    :cond_4
    if-ge v2, v1, :cond_5

    .line 4659
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4661
    :cond_5
    new-array v3, v2, [C

    .line 4662
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 4663
    :goto_1
    if-ge v0, v2, :cond_6

    .line 4664
    rem-int v5, v0, v1

    aget-char v5, v4, v5

    aput-char v5, v3, v0

    .line 4663
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4666
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2527
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2555
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2584
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2618
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3128
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3156
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2645
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2676
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2705
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2738
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2847
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2883
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2966
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3006
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 6322
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6392
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6400
    :cond_0
    :goto_0
    return v0

    .line 6395
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 6396
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6397
    const/4 v0, 0x1

    goto :goto_0

    .line 6395
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 6348
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    :goto_0
    return-object p0

    .line 451
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 628
    if-nez p0, :cond_0

    .line 629
    const/4 v0, 0x0

    .line 642
    :goto_0
    return-object v0

    .line 633
    :cond_0
    :try_start_0
    sget-boolean v0, Lorg/apache/commons/lang3/StringUtils;->e:Z

    if-eqz v0, :cond_1

    .line 634
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 635
    :cond_1
    sget-boolean v0, Lorg/apache/commons/lang3/StringUtils;->b:Z

    if-eqz v0, :cond_2

    .line 636
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 638
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The stripAccents(CharSequence) method requires at least Java 1.6 or a Sun JVM"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 643
    :catch_0
    move-exception v0

    .line 644
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IllegalArgumentException occurred"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 645
    :catch_1
    move-exception v0

    .line 646
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IllegalAccessException occurred"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 647
    :catch_2
    move-exception v0

    .line 648
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "InvocationTargetException occurred"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 649
    :catch_3
    move-exception v0

    .line 650
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SecurityException occurred"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 596
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-object p0

    .line 599
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    .line 600
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 601
    aget-object v3, p0, v1

    invoke-static {v3, p1}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object p0, v0

    .line 603
    goto :goto_0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 526
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-object p0

    .line 530
    :cond_1
    if-nez p1, :cond_2

    .line 531
    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 532
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 534
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    :goto_2
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 538
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 541
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 481
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-object p0

    .line 484
    :cond_1
    const/4 v0, 0x0

    .line 485
    if-nez p1, :cond_2

    .line 486
    :goto_1
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 489
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    :goto_2
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 496
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 388
    if-nez p0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 391
    :cond_1
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2016
    if-nez p0, :cond_0

    .line 2017
    const/4 v0, 0x0

    .line 2032
    :goto_0
    return-object v0

    .line 2021
    :cond_0
    if-gez p1, :cond_3

    .line 2022
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    .line 2025
    :goto_1
    if-gez v0, :cond_1

    .line 2026
    const/4 v0, 0x0

    .line 2028
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 2029
    const-string v0, ""

    goto :goto_0

    .line 2032
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2071
    if-nez p0, :cond_0

    .line 2072
    const/4 v0, 0x0

    .line 2100
    :goto_0
    return-object v0

    .line 2076
    :cond_0
    if-gez p2, :cond_6

    .line 2077
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    .line 2079
    :goto_1
    if-gez p1, :cond_1

    .line 2080
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p1, v2

    .line 2084
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 2085
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2089
    :cond_2
    if-le p1, v1, :cond_3

    .line 2090
    const-string v0, ""

    goto :goto_0

    .line 2093
    :cond_3
    if-gez p1, :cond_4

    move p1, v0

    .line 2096
    :cond_4
    if-gez v1, :cond_5

    .line 2100
    :goto_2
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v1, p2

    goto :goto_1
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2284
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2294
    :goto_0
    return-object p0

    .line 2287
    :cond_0
    if-nez p1, :cond_1

    .line 2288
    const-string p0, ""

    goto :goto_0

    .line 2290
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2291
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2292
    const-string p0, ""

    goto :goto_0

    .line 2294
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2365
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2375
    :goto_0
    return-object p0

    .line 2368
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2369
    const-string p0, ""

    goto :goto_0

    .line 2371
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2372
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    .line 2373
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 2375
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2242
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 2252
    :cond_0
    :goto_0
    return-object p0

    .line 2245
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 2246
    const-string p0, ""

    goto :goto_0

    .line 2248
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2249
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2252
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2325
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2332
    :cond_0
    :goto_0
    return-object p0

    .line 2328
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2329
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2332
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2402
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 2433
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2443
    :cond_0
    :goto_0
    return-object v0

    .line 2436
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2437
    if-eq v1, v3, :cond_0

    .line 2438
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2439
    if-eq v2, v3, :cond_0

    .line 2440
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2469
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2496
    :cond_0
    :goto_0
    return-object v0

    .line 2472
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2473
    if-nez v2, :cond_2

    .line 2474
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 2476
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 2477
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2478
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2479
    const/4 v1, 0x0

    .line 2480
    :goto_1
    sub-int v6, v2, v3

    if-ge v1, v6, :cond_3

    .line 2481
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 2482
    if-gez v1, :cond_4

    .line 2493
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2496
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 2485
    :cond_4
    add-int/2addr v1, v4

    .line 2486
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 2487
    if-ltz v6, :cond_3

    .line 2490
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2491
    add-int v1, v6, v3

    .line 2492
    goto :goto_1
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 5097
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5113
    :goto_0
    return-object p0

    .line 5101
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 5103
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 5104
    aget-char v2, v1, v0

    .line 5105
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5106
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 5103
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5107
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5108
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_2

    .line 5109
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5110
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_2

    .line 5113
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 5060
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 5063
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4929
    if-nez p0, :cond_0

    .line 4930
    const/4 v0, 0x0

    .line 4932
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4952
    if-nez p0, :cond_0

    .line 4953
    const/4 v0, 0x0

    .line 4955
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
