.class Lcom/heyzap/mediation/MediationManager$2;
.super Ljava/lang/Object;
.source "MediationManager.java"

# interfaces
.implements Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/MediationManager;->display(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/mediation/request/MediationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/MediationManager;

.field final synthetic val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/MediationManager;Lcom/heyzap/mediation/request/MediationRequest;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    iput-object p2, p0, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigLoaded(Lcom/heyzap/mediation/config/MediationConfig;)V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/heyzap/mediation/filters/FilterContext;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v2}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/heyzap/mediation/filters/FilterContext;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/heyzap/mediation/config/MediationConfig;->getFilterManager()Lcom/heyzap/mediation/filters/FilterManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/filters/FilterManager;->accept(Lcom/heyzap/mediation/filters/FilterContext;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$200(Lcom/heyzap/mediation/MediationManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->sendDisplayFailed(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    const-string v1, "mediation failed"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/request/MediationRequest;->sendDisplayFailed(Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/heyzap/mediation/config/MediationConfig;->getDisplayStrategy(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/mediation/display/Mediator;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-interface {v1, v2}, Lcom/heyzap/mediation/display/Mediator;->mediate(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/concurrency/ListenableFuture;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/heyzap/mediation/MediationManager$2$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/heyzap/mediation/MediationManager$2$1;-><init>(Lcom/heyzap/mediation/MediationManager$2;Lcom/heyzap/common/concurrency/ListenableFuture;Lcom/heyzap/mediation/config/MediationConfig;Lcom/heyzap/mediation/filters/FilterContext;)V

    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$400(Lcom/heyzap/mediation/MediationManager;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/heyzap/common/concurrency/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method
