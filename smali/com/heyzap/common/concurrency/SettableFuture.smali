.class public final Lcom/heyzap/common/concurrency/SettableFuture;
.super Lcom/heyzap/common/concurrency/AbstractFuture;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/heyzap/common/concurrency/AbstractFuture",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/heyzap/common/concurrency/AbstractFuture;-><init>()V

    return-void
.end method

.method public static create()Lcom/heyzap/common/concurrency/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {v0}, Lcom/heyzap/common/concurrency/SettableFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/heyzap/common/concurrency/AbstractFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/heyzap/common/concurrency/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
