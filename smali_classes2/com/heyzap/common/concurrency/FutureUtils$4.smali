.class final Lcom/heyzap/common/concurrency/FutureUtils$4;
.super Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;
.source "FutureUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/concurrency/FutureUtils;->wrap(Lcom/heyzap/common/concurrency/ListenableFuture;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/common/concurrency/SettableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$resultFuture:Lcom/heyzap/common/concurrency/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .locals 0

    .prologue
    .line 84
    iput-object p2, p0, Lcom/heyzap/common/concurrency/FutureUtils$4;->val$resultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {p0, p1}, Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/common/concurrency/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    if-nez p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/heyzap/common/concurrency/FutureUtils$4;->val$resultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/concurrency/FutureUtils$4;->val$resultFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0, p2}, Lcom/heyzap/common/concurrency/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
