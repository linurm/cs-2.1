.class final Lcom/heyzap/house/model/AdModel$3;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "AdModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/model/AdModel;->onManyImpressions(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$models:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel$3;->val$models:Ljava/util/List;

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 273
    invoke-virtual {p0, p3}, Lcom/heyzap/house/model/AdModel$3;->onFailure(Ljava/lang/Throwable;)V

    .line 274
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 267
    invoke-virtual {p0, p3}, Lcom/heyzap/house/model/AdModel$3;->onFailure(Ljava/lang/Throwable;)V

    .line 268
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 261
    invoke-static {p1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 262
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 240
    const-string v0, "status"

    invoke-virtual {p3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$3;->val$models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/AdModel;

    .line 242
    invoke-static {v0}, Lcom/heyzap/house/model/AdModel;->access$200(Lcom/heyzap/house/model/AdModel;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    const-string v2, "(IMPRESSION) %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/heyzap/house/model/AdModel;->setSentImpression(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$3;->val$models:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/AdModel;

    .line 249
    const-string v2, "(IMPRESSION ERROR) Bad Response: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 252
    :cond_2
    return-void
.end method
