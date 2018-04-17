.class Lcom/heyzap/house/model/AdModel$2;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "AdModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/model/AdModel;->onImpression(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/model/AdModel;


# direct methods
.method constructor <init>(Lcom/heyzap/house/model/AdModel;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel$2;->this$0:Lcom/heyzap/house/model/AdModel;

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$2;->this$0:Lcom/heyzap/house/model/AdModel;

    invoke-static {v0}, Lcom/heyzap/house/model/AdModel;->access$100(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$2;->this$0:Lcom/heyzap/house/model/AdModel;

    invoke-static {v0}, Lcom/heyzap/house/model/AdModel;->access$100(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/request/AdRequest;->getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    move-result-object v0

    .line 190
    instance-of v1, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;

    if-eqz v1, :cond_0

    .line 191
    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->onImpressed()V

    .line 195
    :cond_0
    const-string v0, "status"

    invoke-virtual {p3, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 196
    const-string v0, "(IMPRESSION) %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/heyzap/house/model/AdModel$2;->this$0:Lcom/heyzap/house/model/AdModel;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$2;->this$0:Lcom/heyzap/house/model/AdModel;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/house/model/AdModel;->access$202(Lcom/heyzap/house/model/AdModel;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 199
    :cond_1
    return-void
.end method
