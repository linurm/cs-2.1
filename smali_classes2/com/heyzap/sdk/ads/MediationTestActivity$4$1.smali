.class Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;
.super Lcom/heyzap/http/AsyncHttpResponseHandler;
.source "MediationTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity$4;->onConfigLoaded(Lcom/heyzap/mediation/config/MediationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity$4;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$4;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    .line 188
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 6

    .prologue
    .line 151
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    const-string v1, "networks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 153
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 154
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 155
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$4;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$4;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    .line 159
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 161
    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Heyzap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    const-string v4, "enabled"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V

    .line 164
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$4;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    const-string v3, "heyzap_video"

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$4;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    .line 180
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V

    goto :goto_2

    .line 166
    :cond_1
    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {v0, v3}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V

    .line 167
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;->this$1:Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity$4;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    const-string v3, "heyzap_video"

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V

    goto :goto_1

    .line 170
    :cond_2
    const-string v4, "enabled"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->isInitialized()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getFetchStore()Lcom/heyzap/mediation/FetchRequestStore;

    move-result-object v3

    iput-object v3, v0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    .line 172
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V

    goto/16 :goto_1

    .line 174
    :cond_3
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setRemoteStatus(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 183
    :cond_4
    return-void
.end method
