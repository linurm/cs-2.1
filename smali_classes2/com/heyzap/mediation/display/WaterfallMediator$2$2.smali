.class Lcom/heyzap/mediation/display/WaterfallMediator$2$2;
.super Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;
.source "WaterfallMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/display/WaterfallMediator$2;->run(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable",
        "<",
        "Lcom/heyzap/common/lifecycle/FetchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

.field final synthetic val$reapTimeoutFuture:Lcom/heyzap/common/concurrency/SettableFuture;

.field final synthetic val$wrapper:Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/display/WaterfallMediator$2;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;Lcom/heyzap/common/concurrency/SettableFuture;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

    iput-object p3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->val$wrapper:Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    iput-object p4, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->val$reapTimeoutFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-direct {p0, p2}, Lcom/heyzap/common/concurrency/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/common/concurrency/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/heyzap/common/lifecycle/FetchResult;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 156
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->val$wrapper:Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    iget-boolean v0, v0, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->rejected:Z

    if-nez v0, :cond_0

    .line 157
    if-eqz p1, :cond_2

    .line 158
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->val$wrapper:Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    iget-object v1, p1, Lcom/heyzap/common/lifecycle/FetchResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->setRejected(Ljava/lang/String;)V

    .line 164
    :cond_0
    :goto_0
    const-string v0, "Reaping %s for %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->val$wrapper:Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    iget-object v3, v3, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->val$wrapper:Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    invoke-virtual {v2}, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->getRejectionCause()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->info(Ljava/lang/String;)V

    .line 166
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->val$reapTimeoutFuture:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    return-void

    .line 159
    :cond_2
    if-eqz p2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->val$wrapper:Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/display/Mediator$NetworkWrapper;->setRejected(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 152
    check-cast p1, Lcom/heyzap/common/lifecycle/FetchResult;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->run(Lcom/heyzap/common/lifecycle/FetchResult;Ljava/lang/Exception;)V

    return-void
.end method
