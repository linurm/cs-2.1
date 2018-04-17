.class Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$IncentiveListener;
.super Ljava/lang/Object;
.source "AdcolonyAdapter.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyV4VCListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncentiveListener"
.end annotation


# instance fields
.field private adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;


# direct methods
.method public constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$IncentiveListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$IncentiveListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 424
    return-void
.end method


# virtual methods
.method public onAdColonyV4VCReward(Lcom/jirbo/adcolony/AdColonyV4VCReward;)V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$IncentiveListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->lastIncentivizedDisplay:Lcom/heyzap/common/lifecycle/AdDisplay;

    .line 429
    if-eqz v0, :cond_0

    .line 430
    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->incentiveListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->success()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/concurrency/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 432
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$IncentiveListener;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->success()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "incentivized_result_complete"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->onCallbackEvent(Ljava/lang/String;)V

    .line 434
    :cond_0
    return-void

    .line 432
    :cond_1
    const-string v0, "incentivized_result_incomplete"

    goto :goto_0
.end method
