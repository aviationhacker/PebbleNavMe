.class public final Landroid/support/v4/text/BidiFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/BidiFormatter$1;,
        Landroid/support/v4/text/BidiFormatter$a;,
        Landroid/support/v4/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field private static a:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Landroid/support/v4/text/BidiFormatter;

.field private static final e:Landroid/support/v4/text/BidiFormatter;


# instance fields
.field private final f:Z

.field private final g:I

.field private final h:Landroid/support/v4/text/TextDirectionHeuristicCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 83
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->a:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 113
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->b:Ljava/lang/String;

    .line 118
    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->c:Ljava/lang/String;

    .line 215
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v4/text/BidiFormatter;->a:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->d:Landroid/support/v4/text/BidiFormatter;

    .line 220
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    const/4 v1, 0x1

    sget-object v2, Landroid/support/v4/text/BidiFormatter;->a:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->e:Landroid/support/v4/text/BidiFormatter;

    return-void
.end method

.method private constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-boolean p1, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    .line 262
    iput p2, p0, Landroid/support/v4/text/BidiFormatter;->g:I

    .line 263
    iput-object p3, p0, Landroid/support/v4/text/BidiFormatter;->h:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 264
    return-void
.end method

.method synthetic constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;Landroid/support/v4/text/BidiFormatter$1;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 465
    new-instance v0, Landroid/support/v4/text/BidiFormatter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/text/BidiFormatter$a;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$a;->b()I

    move-result v0

    return v0
.end method

.method static synthetic a()Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->a:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 299
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 300
    :cond_0
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->b:Ljava/lang/String;

    .line 305
    :goto_0
    return-object v0

    .line 302
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 303
    :cond_2
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->c:Ljava/lang/String;

    goto :goto_0

    .line 305
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/Locale;)Z
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, Landroid/support/v4/text/BidiFormatter;->b(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 482
    new-instance v0, Landroid/support/v4/text/BidiFormatter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/text/BidiFormatter$a;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$a;->a()I

    move-result v0

    return v0
.end method

.method static synthetic b()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->e:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method private b(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 326
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 327
    :cond_0
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->b:Ljava/lang/String;

    .line 332
    :goto_0
    return-object v0

    .line 329
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 330
    :cond_2
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->c:Ljava/lang/String;

    goto :goto_0

    .line 332
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private static b(Ljava/util/Locale;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 440
    invoke-static {p0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->d:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method public static getInstance()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .prologue
    .line 252
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Z)Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .prologue
    .line 243
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Z)V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStereoReset()Z
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Landroid/support/v4/text/BidiFormatter;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRtl(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->h:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public isRtlContext()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    return v0
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->h:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 376
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 394
    :goto_0
    return-object v0

    .line 377
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v1

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter;->getStereoReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 380
    if-eqz v1, :cond_3

    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/text/BidiFormatter;->b(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->f:Z

    if-eq v1, v0, :cond_5

    .line 384
    if-eqz v1, :cond_4

    const/16 v0, 0x202b

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const/16 v0, 0x202c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :goto_3
    if-eqz p3, :cond_2

    .line 391
    if-eqz v1, :cond_6

    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_4
    invoke-direct {p0, p1, v0}, Landroid/support/v4/text/BidiFormatter;->a(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_3
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_1

    .line 384
    :cond_4
    const/16 v0, 0x202a

    goto :goto_2

    .line 388
    :cond_5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 391
    :cond_6
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_4
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->h:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
