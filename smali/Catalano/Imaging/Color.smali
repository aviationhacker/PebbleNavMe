.class public LCatalano/Imaging/Color;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Black:LCatalano/Imaging/Color;

.field public static final Blue:LCatalano/Imaging/Color;

.field public static final Cyan:LCatalano/Imaging/Color;

.field public static final DarkGray:LCatalano/Imaging/Color;

.field public static final Gray:LCatalano/Imaging/Color;

.field public static final Green:LCatalano/Imaging/Color;

.field public static final LightGray:LCatalano/Imaging/Color;

.field public static final Magenta:LCatalano/Imaging/Color;

.field public static final Orange:LCatalano/Imaging/Color;

.field public static final Pink:LCatalano/Imaging/Color;

.field public static final Red:LCatalano/Imaging/Color;

.field public static final White:LCatalano/Imaging/Color;

.field public static final Yellow:LCatalano/Imaging/Color;


# instance fields
.field public b:I

.field public g:I

.field public r:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xc0

    const/16 v2, 0x80

    const/16 v1, 0x40

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 34
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, v3, v3, v3}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->Black:LCatalano/Imaging/Color;

    .line 40
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, v3, v3, v4}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->Blue:LCatalano/Imaging/Color;

    .line 46
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, v3, v4, v4}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->Cyan:LCatalano/Imaging/Color;

    .line 52
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, v1, v1, v1}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->DarkGray:LCatalano/Imaging/Color;

    .line 58
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, v2, v2, v2}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->Gray:LCatalano/Imaging/Color;

    .line 64
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, v3, v4, v3}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->Green:LCatalano/Imaging/Color;

    .line 70
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, v5, v5, v5}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->LightGray:LCatalano/Imaging/Color;

    .line 76
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, v4, v3, v4}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->Magenta:LCatalano/Imaging/Color;

    .line 82
    new-instance v0, LCatalano/Imaging/Color;

    const/16 v1, 0xc8

    invoke-direct {v0, v4, v1, v3}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->Orange:LCatalano/Imaging/Color;

    .line 88
    new-instance v0, LCatalano/Imaging/Color;

    const/16 v1, 0xaf

    const/16 v2, 0xaf

    invoke-direct {v0, v4, v1, v2}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->Pink:LCatalano/Imaging/Color;

    .line 94
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, v4, v3, v3}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->Red:LCatalano/Imaging/Color;

    .line 100
    new-instance v0, LCatalano/Imaging/Color;

    const/16 v1, 0xc8

    invoke-direct {v0, v4, v1, v3}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->Yellow:LCatalano/Imaging/Color;

    .line 106
    new-instance v0, LCatalano/Imaging/Color;

    invoke-direct {v0, v4, v4, v4}, LCatalano/Imaging/Color;-><init>(III)V

    sput-object v0, LCatalano/Imaging/Color;->White:LCatalano/Imaging/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v0, p0, LCatalano/Imaging/Color;->r:I

    .line 116
    iput v0, p0, LCatalano/Imaging/Color;->g:I

    .line 121
    iput v0, p0, LCatalano/Imaging/Color;->b:I

    .line 163
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v0, p0, LCatalano/Imaging/Color;->r:I

    .line 116
    iput v0, p0, LCatalano/Imaging/Color;->g:I

    .line 121
    iput v0, p0, LCatalano/Imaging/Color;->b:I

    .line 192
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, LCatalano/Imaging/Color;->r:I

    .line 193
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, LCatalano/Imaging/Color;->g:I

    .line 194
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, LCatalano/Imaging/Color;->b:I

    .line 195
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v0, p0, LCatalano/Imaging/Color;->r:I

    .line 116
    iput v0, p0, LCatalano/Imaging/Color;->g:I

    .line 121
    iput v0, p0, LCatalano/Imaging/Color;->b:I

    .line 172
    iput p1, p0, LCatalano/Imaging/Color;->r:I

    .line 173
    iput p2, p0, LCatalano/Imaging/Color;->g:I

    .line 174
    iput p3, p0, LCatalano/Imaging/Color;->b:I

    .line 175
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v0, p0, LCatalano/Imaging/Color;->r:I

    .line 116
    iput v0, p0, LCatalano/Imaging/Color;->g:I

    .line 121
    iput v0, p0, LCatalano/Imaging/Color;->b:I

    .line 182
    aget v0, p1, v0

    iput v0, p0, LCatalano/Imaging/Color;->r:I

    .line 183
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, LCatalano/Imaging/Color;->g:I

    .line 184
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, LCatalano/Imaging/Color;->b:I

    .line 185
    return-void
.end method

.method public static Count(LCatalano/Imaging/FastBitmap;)I
    .locals 8

    .prologue
    const/high16 v7, 0x1000000

    const/16 v6, 0x100

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    new-array v2, v6, [B

    .line 135
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v3

    move v0, v1

    .line 136
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 137
    aget v4, v3, v0

    aput-byte v5, v2, v4

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 139
    :goto_1
    if-ge v1, v6, :cond_5

    .line 140
    aget-byte v3, v2, v1

    if-ne v3, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 139
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_2
    new-array v2, v7, [B

    .line 149
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v3

    move v0, v1

    .line 150
    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 151
    aget v4, v3, v0

    aput-byte v5, v2, v4

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 153
    :goto_3
    if-ge v1, v7, :cond_5

    .line 154
    aget-byte v3, v2, v1

    if-ne v3, v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 153
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 156
    :cond_5
    return v0
.end method

.method public static isEqual(LCatalano/Imaging/Color;LCatalano/Imaging/Color;)Z
    .locals 2

    .prologue
    .line 204
    iget v0, p0, LCatalano/Imaging/Color;->r:I

    iget v1, p1, LCatalano/Imaging/Color;->r:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LCatalano/Imaging/Color;->g:I

    iget v1, p1, LCatalano/Imaging/Color;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LCatalano/Imaging/Color;->b:I

    iget v1, p1, LCatalano/Imaging/Color;->b:I

    if-ne v0, v1, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
