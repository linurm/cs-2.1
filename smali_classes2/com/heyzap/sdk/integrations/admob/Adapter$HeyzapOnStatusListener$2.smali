.class Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener$2;
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
    .line 224
    iput-object p1, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener$2;->this$1:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener$2;->this$1:Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;

    iget-object v0, v0, Lcom/heyzap/sdk/integrations/admob/Adapter$HeyzapOnStatusListener;->this$0:Lcom/heyzap/sdk/integrations/admob/Adapter;

    invoke-static {v0}, Lcom/heyzap/sdk/integrations/admob/Adapter;->access$200(Lcom/heyzap/sdk/integrations/admob/Adapter;)Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;->onReceivedAd()V

    .line 229
    return-void
.end method
