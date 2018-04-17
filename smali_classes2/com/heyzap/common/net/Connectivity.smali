.class public Lcom/heyzap/common/net/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;
    }
.end annotation


# static fields
.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static connectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 100
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 101
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 103
    if-nez v0, :cond_0

    move-object v0, v1

    .line 148
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 108
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 110
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 111
    const-string v0, "wifi"

    goto :goto_0

    .line 112
    :cond_1
    if-nez v2, :cond_2

    .line 113
    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 145
    goto :goto_0

    .line 115
    :pswitch_0
    const-string v0, "rtt"

    goto :goto_0

    .line 117
    :pswitch_1
    const-string v0, "cdma"

    goto :goto_0

    .line 119
    :pswitch_2
    const-string v0, "edge"

    goto :goto_0

    .line 122
    :pswitch_3
    const-string v0, "evdo"

    goto :goto_0

    .line 124
    :pswitch_4
    const-string v0, "gprs"

    goto :goto_0

    .line 126
    :pswitch_5
    const-string v0, "hsdpa"

    goto :goto_0

    .line 128
    :pswitch_6
    const-string v0, "hspa"

    goto :goto_0

    .line 130
    :pswitch_7
    const-string v0, "hsupa"

    goto :goto_0

    .line 132
    :pswitch_8
    const-string v0, "umts"

    goto :goto_0

    .line 134
    :pswitch_9
    const-string v0, "ehrpd"

    goto :goto_0

    .line 136
    :pswitch_a
    const-string v0, "evdo_b"

    goto :goto_0

    .line 138
    :pswitch_b
    const-string v0, "hspap"

    goto :goto_0

    .line 140
    :pswitch_c
    const-string v0, "iden"

    goto :goto_0

    .line 142
    :pswitch_d
    const-string v0, "lte"

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 148
    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 33
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 34
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnectedFast(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 43
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 44
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v1, v0}, Lcom/heyzap/common/net/Connectivity;->isConnectionFast(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnectionFast(II)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 55
    if-ne p0, v0, :cond_0

    .line 95
    :goto_0
    :pswitch_0
    return v0

    .line 57
    :cond_0
    if-nez p0, :cond_1

    .line 58
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 92
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 60
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 62
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 64
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 70
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 84
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 86
    goto :goto_0

    :cond_1
    move v0, v1

    .line 95
    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static openRtbConnectionType(Landroid/content/Context;)Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;
    .locals 3

    .prologue
    .line 153
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 154
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 156
    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 160
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 161
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 163
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 164
    sget-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->WIFI:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    goto :goto_0

    .line 165
    :cond_1
    if-nez v1, :cond_2

    .line 166
    packed-switch v0, :pswitch_data_0

    .line 187
    sget-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CELL_UNKNOWN:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    goto :goto_0

    .line 172
    :pswitch_0
    sget-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CELL_2G:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    goto :goto_0

    .line 179
    :pswitch_1
    sget-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CELL_3G:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    goto :goto_0

    .line 184
    :pswitch_2
    sget-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CELL_4G:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    goto :goto_0

    .line 190
    :cond_2
    sget-object v0, Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;->CONNECTION_UNKNOWN:Lcom/heyzap/common/net/Connectivity$OpenRtbConnectionType;

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
