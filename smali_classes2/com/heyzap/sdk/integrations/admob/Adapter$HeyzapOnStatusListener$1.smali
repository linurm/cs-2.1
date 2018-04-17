.class Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener$1;
.super Ljava/lang/Object;
.source "Adapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->onAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener$1;->this$1:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener$1;->this$1:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    iget-object v0, v0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$100(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener$1;->this$1:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    iget-object v1, v1, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 217
    return-void
.end method
