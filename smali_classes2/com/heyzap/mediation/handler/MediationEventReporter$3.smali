.class Lcom/heyzap/mediation/handler/MediationEventReporter$3;
.super Ljava/lang/Object;
.source "MediationEventReporter.java"

# interfaces
.implements Lcom/heyzap/common/lifecycle/EventStream$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/handler/MediationEventReporter;->bindDisplayCallbacks(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/common/lifecycle/AdDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heyzap/common/lifecycle/EventStream$EventListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/handler/MediationEventReporter;

.field final synthetic val$adDisplay:Lcom/heyzap/common/lifecycle/AdDisplay;

.field final synthetic val$baseParams:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/handler/MediationEventReporter;Ljava/util/Map;Lcom/heyzap/common/lifecycle/AdDisplay;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$3;->this$0:Lcom/heyzap/mediation/handler/MediationEventReporter;

    iput-object p2, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$3;->val$baseParams:Ljava/util/Map;

    iput-object p3, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$3;->val$adDisplay:Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/heyzap/http/RequestParams;

    iget-object v1, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$3;->val$baseParams:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/heyzap/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 70
    const-string v1, "banner_ordinal"

    iget-object v2, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$3;->val$adDisplay:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v2, v2, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    invoke-virtual {v2}, Lcom/heyzap/common/lifecycle/EventStream;->getEventsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$3;->this$0:Lcom/heyzap/mediation/handler/MediationEventReporter;

    invoke-static {v1, v0}, Lcom/heyzap/mediation/handler/MediationEventReporter;->access$100(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/http/RequestParams;)V

    .line 72
    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/heyzap/mediation/handler/MediationEventReporter$3;->onEvent(Ljava/lang/Boolean;)V

    return-void
.end method
