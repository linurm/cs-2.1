.class public Lcom/heyzap/common/cache/Entry;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/heyzap/common/cache/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private createdTime:J

.field private dirty:Ljava/lang/Boolean;

.field private expiry:J

.field private fileName:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private lastUsedTime:J

.field private lengthBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heyzap/common/cache/Entry;->expiry:J

    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/cache/Entry;->dirty:Ljava/lang/Boolean;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/common/cache/Entry;->createdTime:J

    .line 28
    invoke-virtual {p0}, Lcom/heyzap/common/cache/Entry;->touch()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heyzap/common/cache/Entry;->expiry:J

    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/cache/Entry;->dirty:Ljava/lang/Boolean;

    .line 33
    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/heyzap/common/cache/Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/heyzap/common/cache/Entry;

    invoke-direct {v0}, Lcom/heyzap/common/cache/Entry;-><init>()V

    .line 143
    const-string v1, "dirty"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/common/cache/Entry;->dirty:Ljava/lang/Boolean;

    .line 144
    const-string v1, "expiry"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/heyzap/common/cache/Entry;->expiry:J

    .line 145
    const-string v1, "last_used_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/heyzap/common/cache/Entry;->lastUsedTime:J

    .line 146
    const-string v1, "created_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/heyzap/common/cache/Entry;->createdTime:J

    .line 147
    const-string v1, "identifier"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/common/cache/Entry;->identifier:Ljava/lang/String;

    .line 149
    const-string v1, "file_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/common/cache/Entry;->setFilename(Ljava/lang/String;)V

    .line 151
    return-object v0
.end method


# virtual methods
.method public asJSONObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 129
    const-string v1, "file_name"

    iget-object v2, p0, Lcom/heyzap/common/cache/Entry;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v1, "length_bytes"

    iget-wide v2, p0, Lcom/heyzap/common/cache/Entry;->lengthBytes:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    const-string v1, "last_used_time"

    iget-wide v2, p0, Lcom/heyzap/common/cache/Entry;->lastUsedTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 132
    const-string v1, "created_time"

    iget-wide v2, p0, Lcom/heyzap/common/cache/Entry;->createdTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 133
    const-string v1, "expiry"

    iget-wide v2, p0, Lcom/heyzap/common/cache/Entry;->expiry:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 134
    const-string v1, "identifier"

    iget-object v2, p0, Lcom/heyzap/common/cache/Entry;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v1, "dirty"

    iget-object v2, p0, Lcom/heyzap/common/cache/Entry;->dirty:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v1, "klass"

    const-class v2, Lcom/heyzap/common/cache/Entry;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    return-object v0
.end method

.method public compareTo(Lcom/heyzap/common/cache/Entry;)I
    .locals 4

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/heyzap/common/cache/Entry;->lastUsedTime:J

    invoke-virtual {p1}, Lcom/heyzap/common/cache/Entry;->getLastUsedTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    .line 120
    :cond_0
    iget-wide v0, p0, Lcom/heyzap/common/cache/Entry;->lastUsedTime:J

    invoke-virtual {p1}, Lcom/heyzap/common/cache/Entry;->getLastUsedTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 121
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/heyzap/common/cache/Entry;

    invoke-virtual {p0, p1}, Lcom/heyzap/common/cache/Entry;->compareTo(Lcom/heyzap/common/cache/Entry;)I

    move-result v0

    return v0
.end method

.method public deleteHardReference()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/heyzap/common/cache/Entry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/cache/Entry;->dirty:Ljava/lang/Boolean;

    .line 107
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 113
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public final fileExists()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/heyzap/common/cache/Entry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/heyzap/common/cache/Entry;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    return-object v0
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/heyzap/common/cache/Entry;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/heyzap/common/cache/Entry;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastUsedTime()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/heyzap/common/cache/Entry;->lastUsedTime:J

    return-wide v0
.end method

.method public final getSize()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/heyzap/common/cache/Entry;->lengthBytes:J

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/heyzap/common/cache/Entry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final isDirty()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/heyzap/common/cache/Entry;->dirty:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setDirty(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/heyzap/common/cache/Entry;->dirty:Ljava/lang/Boolean;

    .line 41
    return-void
.end method

.method public final setFilename(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/heyzap/common/cache/Entry;->fileName:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File does not exist."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/common/cache/Entry;->lengthBytes:J

    .line 57
    iget-wide v0, p0, Lcom/heyzap/common/cache/Entry;->lengthBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File has zero file size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/heyzap/common/cache/Entry;->identifier:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public final setLastUsed()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/common/cache/Entry;->lastUsedTime:J

    .line 80
    return-void
.end method

.method public final setLastUsed(J)V
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/heyzap/common/cache/Entry;->lastUsedTime:J

    .line 76
    return-void
.end method

.method public final touch()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/common/cache/Entry;->lastUsedTime:J

    .line 88
    return-void
.end method
