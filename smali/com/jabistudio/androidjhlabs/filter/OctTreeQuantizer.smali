.class public Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jabistudio/androidjhlabs/filter/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

.field private c:I

.field private d:I

.field private e:I

.field private f:[Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->a:I

    .line 69
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    .line 73
    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->setup(I)V

    .line 74
    new-array v1, v3, [Ljava/util/Vector;

    iput-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->f:[Ljava/util/Vector;

    .line 75
    :goto_0
    if-ge v0, v3, :cond_0

    .line 76
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->f:[Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    invoke-direct {v0, p0}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;-><init>(Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;)V

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->b:Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    .line 78
    return-void
.end method

.method private a(Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;[II)I
    .locals 3

    .prologue
    .line 260
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->d:I

    if-le v0, v1, :cond_0

    .line 261
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->d:I

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->b(I)V

    .line 263
    :cond_0
    iget-boolean v0, p1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->e:Z

    if-eqz v0, :cond_2

    .line 264
    iget v0, p1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->f:I

    .line 265
    const/high16 v1, -0x1000000

    iget v2, p1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->g:I

    div-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->h:I

    div-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->i:I

    div-int v0, v2, v0

    or-int/2addr v0, v1

    aput v0, p2, p3

    .line 269
    add-int/lit8 v0, p3, 0x1

    iput p3, p1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->j:I

    .line 278
    :cond_1
    return v0

    .line 271
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    move v0, p3

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 272
    iget-object v2, p1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->d:[Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 273
    iput v0, p1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->j:I

    .line 274
    iget-object v2, p1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->d:[Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    aget-object v2, v2, v1

    invoke-direct {p0, v2, p2, v0}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->a(Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;[II)I

    move-result v0

    .line 271
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(I)V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 141
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v5, v0, 0xff

    .line 142
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v6, v0, 0xff

    .line 143
    and-int/lit16 v7, p1, 0xff

    .line 145
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->b:Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    move v3, v2

    move-object v4, v0

    .line 148
    :goto_0
    if-gt v3, v10, :cond_5

    .line 150
    const/16 v0, 0x80

    shr-int v1, v0, v3

    .line 153
    and-int v0, v5, v1

    if-eqz v0, :cond_6

    .line 154
    const/4 v0, 0x4

    .line 155
    :goto_1
    and-int v8, v6, v1

    if-eqz v8, :cond_0

    .line 156
    add-int/lit8 v0, v0, 0x2

    .line 157
    :cond_0
    and-int/2addr v1, v7

    if-eqz v1, :cond_1

    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 160
    :cond_1
    iget-object v1, v4, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->d:[Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    aget-object v1, v1, v0

    .line 162
    if-nez v1, :cond_3

    .line 163
    iget v1, v4, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->a:I

    .line 165
    new-instance v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    invoke-direct {v1, p0}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;-><init>(Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;)V

    .line 166
    iput-object v4, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->c:Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    .line 167
    iget-object v8, v4, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->d:[Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    aput-object v1, v8, v0

    .line 168
    iput-boolean v2, v4, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->e:Z

    .line 169
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->a:I

    .line 170
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->f:[Ljava/util/Vector;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 172
    if-ne v3, v10, :cond_2

    .line 173
    iput-boolean v9, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->e:Z

    .line 174
    iput v9, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->f:I

    .line 175
    iput v5, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->g:I

    .line 176
    iput v6, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->h:I

    .line 177
    iput v7, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->i:I

    .line 178
    iput v3, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->b:I

    .line 179
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    .line 194
    :goto_2
    return-void

    :cond_2
    move-object v0, v1

    .line 148
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v4, v0

    goto :goto_0

    .line 184
    :cond_3
    iget-boolean v0, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->e:Z

    if-eqz v0, :cond_4

    .line 185
    iget v0, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->f:I

    .line 186
    iget v0, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->g:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->g:I

    .line 187
    iget v0, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->h:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->h:I

    .line 188
    iget v0, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->i:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->i:I

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 191
    goto :goto_3

    .line 193
    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "insertColor failed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method private b(I)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 197
    const/4 v0, 0x4

    move v4, v0

    :goto_0
    if-ltz v4, :cond_5

    .line 198
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->f:[Ljava/util/Vector;

    aget-object v5, v0, v4

    .line 199
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v1, v2

    .line 200
    :goto_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 201
    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    .line 202
    iget v3, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->a:I

    if-lez v3, :cond_3

    move v3, v2

    .line 203
    :goto_2
    const/16 v6, 0x8

    if-ge v3, v6, :cond_2

    .line 204
    iget-object v6, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->d:[Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    aget-object v6, v6, v3

    .line 205
    if-eqz v6, :cond_1

    .line 206
    iget-boolean v7, v6, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->e:Z

    if-nez v7, :cond_0

    .line 207
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "not a leaf!"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    :cond_0
    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->f:I

    iget v8, v6, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->f:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->f:I

    .line 209
    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->g:I

    iget v8, v6, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->g:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->g:I

    .line 210
    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->h:I

    iget v8, v6, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->h:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->h:I

    .line 211
    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->i:I

    iget v8, v6, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->i:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->i:I

    .line 212
    iget-object v7, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->d:[Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    const/4 v8, 0x0

    aput-object v8, v7, v3

    .line 213
    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->a:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->a:I

    .line 214
    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    .line 215
    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->a:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->a:I

    .line 216
    iget-object v7, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->f:[Ljava/util/Vector;

    add-int/lit8 v8, v4, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v6}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 219
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->e:Z

    .line 220
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    .line 221
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    if-gt v0, p1, :cond_3

    .line 229
    :goto_3
    return-void

    .line 200
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 197
    :cond_4
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto/16 :goto_0

    .line 228
    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Unable to reduce the OctTree"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public addPixels([III)V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 97
    add-int v1, v0, p2

    aget v1, p1, v1

    invoke-direct {p0, v1}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->a(I)V

    .line 98
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->c:I

    if-le v1, v2, :cond_0

    .line 99
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->c:I

    invoke-direct {p0, v1}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->b(I)V

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method public buildColorTable([I[I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 247
    array-length v2, p1

    .line 248
    array-length v0, p2

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->d:I

    move v0, v1

    .line 249
    :goto_0
    if-ge v0, v2, :cond_1

    .line 250
    aget v3, p1, v0

    invoke-direct {p0, v3}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->a(I)V

    .line 251
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->c:I

    if-le v3, v4, :cond_0

    .line 252
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->c:I

    invoke-direct {p0, v3}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->b(I)V

    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->d:I

    if-le v0, v2, :cond_2

    .line 255
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->d:I

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->b(I)V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->b:Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    invoke-direct {p0, v0, p2, v1}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->a(Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;[II)I

    .line 257
    return-void
.end method

.method public buildColorTable()[I
    .locals 3

    .prologue
    .line 236
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->e:I

    new-array v0, v0, [I

    .line 237
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->b:Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->a(Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;[II)I

    .line 238
    return-object v0
.end method

.method public getIndexForColor(I)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 109
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v5, v0, 0xff

    .line 110
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v6, v0, 0xff

    .line 111
    and-int/lit16 v7, p1, 0xff

    .line 113
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->b:Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    move v2, v1

    move-object v3, v0

    .line 115
    :goto_0
    const/4 v0, 0x5

    if-gt v2, v0, :cond_4

    .line 117
    const/16 v0, 0x80

    shr-int v4, v0, v2

    .line 120
    and-int v0, v5, v4

    if-eqz v0, :cond_5

    .line 121
    const/4 v0, 0x4

    .line 122
    :goto_1
    and-int v8, v6, v4

    if-eqz v8, :cond_0

    .line 123
    add-int/lit8 v0, v0, 0x2

    .line 124
    :cond_0
    and-int/2addr v4, v7

    if-eqz v4, :cond_1

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 127
    :cond_1
    iget-object v4, v3, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->d:[Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;

    aget-object v4, v4, v0

    .line 129
    if-nez v4, :cond_2

    .line 130
    iget v0, v3, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->j:I

    .line 137
    :goto_2
    return v0

    .line 131
    :cond_2
    iget-boolean v0, v4, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->e:Z

    if-eqz v0, :cond_3

    .line 132
    iget v0, v4, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer$a;->j:I

    goto :goto_2

    .line 115
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v3, v4

    goto :goto_0

    .line 136
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "getIndexForColor failed"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 137
    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public setup(I)V
    .locals 2

    .prologue
    .line 85
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->d:I

    .line 86
    const/16 v0, 0x200

    mul-int/lit8 v1, p1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OctTreeQuantizer;->c:I

    .line 87
    return-void
.end method
