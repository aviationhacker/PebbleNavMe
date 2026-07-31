.class final enum Lcom/google/common/io/Files$c$2;
.super Lcom/google/common/io/Files$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Files$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 868
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/Files$c;-><init>(Ljava/lang/String;ILcom/google/common/io/Files$1;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 868
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/common/io/Files$c$2;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    const-string v0, "Files.isFile()"

    return-object v0
.end method
