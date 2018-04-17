.class Lcom/heyzap/mediation/filters/RateLimitFilterPolicy$1;
.super Ljava/lang/Object;
.source "RateLimitFilterPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->addDisplay(Lcom/heyzap/common/lifecycle/AdDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;

.field final synthetic val$adDisplay:Lcom/heyzap/common/lifecycle/AdDisplay;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;Lcom/heyzap/common/lifecycle/AdDisplay;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy$1;->this$0:Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;

    iput-object p2, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy$1;->val$adDisplay:Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy$1;->val$adDisplay:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    new-instance v1, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v2, "failed"

    invoke-direct {v1, v2}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/heyzap/common/concurrency/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/DisplayResult;

    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    .line 55
    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy$1;->this$0:Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->addDisplay(J)V

    .line 58
    :cond_0
    return-void
.end method
