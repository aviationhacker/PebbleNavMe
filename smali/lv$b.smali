.class Llv$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llv$b$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Llv$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    const-class v0, Llv$b;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$ClassValueValidator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llv$b;->a:Ljava/lang/String;

    .line 120
    invoke-static {}, Llv$b;->a()Llv$a;

    move-result-object v0

    sput-object v0, Llv$b;->b:Llv$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method static a()Llv$a;
    .locals 2

    .prologue
    .line 194
    :try_start_0
    sget-object v0, Llv$b;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Llv$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-static {}, Llv;->a()Llv$a;

    move-result-object v0

    goto :goto_0
.end method
