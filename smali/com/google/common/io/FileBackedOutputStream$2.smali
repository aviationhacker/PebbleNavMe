.class Lcom/google/common/io/FileBackedOutputStream$2;
.super Lcom/google/common/io/ByteSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/FileBackedOutputStream;-><init>(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/io/FileBackedOutputStream;


# direct methods
.method constructor <init>(Lcom/google/common/io/FileBackedOutputStream;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream$2;->a:Lcom/google/common/io/FileBackedOutputStream;

    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream$2;->a:Lcom/google/common/io/FileBackedOutputStream;

    invoke-static {v0}, Lcom/google/common/io/FileBackedOutputStream;->a(Lcom/google/common/io/FileBackedOutputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
