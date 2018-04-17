.class Lcom/heyzap/mediation/request/MediationRequest$4;
.super Ljava/lang/Object;
.source "MediationRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/request/MediationRequest;->addStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/request/MediationRequest;

.field final synthetic val$statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/heyzap/mediation/request/MediationRequest$4;->this$0:Lcom/heyzap/mediation/request/MediationRequest;

    iput-object p2, p0, Lcom/heyzap/mediation/request/MediationRequest$4;->val$statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$4;->val$statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    iget-object v1, p0, Lcom/heyzap/mediation/request/MediationRequest$4;->this$0:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onClick(Ljava/lang/String;)V

    .line 157
    return-void
.end method
