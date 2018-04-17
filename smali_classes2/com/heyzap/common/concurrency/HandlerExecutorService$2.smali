.class Lcom/heyzap/common/concurrency/HandlerExecutorService$2;
.super Ljava/lang/Object;
.source "HandlerExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/concurrency/HandlerExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/concurrency/HandlerExecutorService;

.field final synthetic val$future:Lcom/heyzap/common/concurrency/SettableFuture;

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$wrappedTask:Lcom/heyzap/common/concurrency/WrappedRunnable;


# direct methods
.method constructor <init>(Lcom/heyzap/common/concurrency/HandlerExecutorService;Lcom/heyzap/common/concurrency/WrappedRunnable;Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/heyzap/common/concurrency/HandlerExecutorService$2;->this$0:Lcom/heyzap/common/concurrency/HandlerExecutorService;

    iput-object p2, p0, Lcom/heyzap/common/concurrency/HandlerExecutorService$2;->val$wrappedTask:Lcom/heyzap/common/concurrency/WrappedRunnable;

    iput-object p3, p0, Lcom/heyzap/common/concurrency/HandlerExecutorService$2;->val$future:Lcom/heyzap/common/concurrency/SettableFuture;

    iput-object p4, p0, Lcom/heyzap/common/concurrency/HandlerExecutorService$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/heyzap/common/concurrency/HandlerExecutorService$2;->val$wrappedTask:Lcom/heyzap/common/concurrency/WrappedRunnable;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/WrappedRunnable;->run()V

    .line 45
    iget-object v0, p0, Lcom/heyzap/common/concurrency/HandlerExecutorService$2;->val$future:Lcom/heyzap/common/concurrency/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/common/concurrency/HandlerExecutorService$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
