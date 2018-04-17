.class Lcom/heyzap/mediation/filters/InterstitialVideoTracker$1;
.super Ljava/lang/Object;
.source "InterstitialVideoTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/filters/InterstitialVideoTracker;->addDisplay(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult$NetworkResult;Lcom/heyzap/common/lifecycle/AdDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

.field final synthetic val$display:Lcom/heyzap/common/lifecycle/AdDisplay;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/filters/InterstitialVideoTracker;Lcom/heyzap/common/lifecycle/AdDisplay;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/heyzap/mediation/filters/InterstitialVideoTracker$1;->this$0:Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

    iput-object p2, p0, Lcom/heyzap/mediation/filters/InterstitialVideoTracker$1;->val$display:Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/filters/InterstitialVideoTracker$1;->val$display:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/DisplayResult;

    .line 44
    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/heyzap/mediation/filters/InterstitialVideoTracker$1;->this$0:Lcom/heyzap/mediation/filters/InterstitialVideoTracker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/heyzap/mediation/filters/InterstitialVideoTracker;->access$002(Lcom/heyzap/mediation/filters/InterstitialVideoTracker;J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
