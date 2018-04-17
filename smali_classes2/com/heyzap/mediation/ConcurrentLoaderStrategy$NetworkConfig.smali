.class public Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;
.super Ljava/lang/Object;
.source "ConcurrentLoaderStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/ConcurrentLoaderStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkConfig"
.end annotation


# static fields
.field private static DEFAULT_TTL:I


# instance fields
.field public adUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field public adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field public adapterName:Ljava/lang/String;

.field public creativeTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;"
        }
    .end annotation
.end field

.field public data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public load:D

.field public loadingFuture:Lcom/heyzap/common/concurrency/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/common/concurrency/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public ttl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/16 v0, 0x2710

    sput v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->DEFAULT_TTL:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DILjava/util/List;Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DI",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$CreativeType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->load:D

    .line 146
    sget v0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->DEFAULT_TTL:I

    iput v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->ttl:I

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->data:Ljava/util/Map;

    .line 204
    iput-object p1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adapterName:Ljava/lang/String;

    .line 205
    iput-wide p2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->load:D

    .line 206
    iput p4, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->ttl:I

    .line 207
    iput-object p5, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adUnits:Ljava/util/List;

    .line 208
    iput-object p6, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->creativeTypes:Ljava/util/EnumSet;

    .line 209
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-wide v4, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->load:D

    .line 146
    sget v2, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->DEFAULT_TTL:I

    iput v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->ttl:I

    .line 149
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->data:Ljava/util/Map;

    .line 154
    const-string v2, "network"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adapterName:Ljava/lang/String;

    .line 155
    const-string v2, "load"

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->load:D

    .line 156
    const-string v2, "ttl"

    sget v4, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->DEFAULT_TTL:I

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->ttl:I

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adUnits:Ljava/util/List;

    .line 158
    const-string v2, "ad_units"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v2, v3

    .line 159
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 161
    :try_start_0
    iget-object v4, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adUnits:Ljava/util/List;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/heyzap/internal/Constants$AdUnit;->valueOf(Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v4

    .line 163
    const-string v6, "Unable to understand AdUnit: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->adUnits:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 168
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No valid adunits."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_1
    const-class v2, Lcom/heyzap/internal/Constants$CreativeType;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->creativeTypes:Ljava/util/EnumSet;

    .line 172
    const-string v2, "creative_types"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 173
    if-eqz v5, :cond_2

    move v2, v3

    .line 174
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 176
    :try_start_1
    iget-object v4, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/heyzap/internal/Constants$CreativeType;->valueOf(Ljava/lang/String;)Lcom/heyzap/internal/Constants$CreativeType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 177
    :catch_1
    move-exception v4

    .line 178
    const-string v6, "Unable to understand CreativeType: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->creativeTypes:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 184
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No valid creative types found."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_3
    :try_start_2
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 189
    if-eqz v4, :cond_5

    .line 190
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 191
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 192
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 193
    instance-of v2, v3, Ljava/lang/String;

    if-nez v2, :cond_4

    .line 194
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Key not a string."

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 199
    :catch_2
    move-exception v2

    .line 200
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 196
    :cond_4
    :try_start_3
    iget-object v6, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->data:Ljava/util/Map;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 202
    :cond_5
    return-void
.end method
