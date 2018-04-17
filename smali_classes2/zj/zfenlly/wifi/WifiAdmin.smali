.class public Lzj/zfenlly/wifi/WifiAdmin;
.super Ljava/lang/Object;
.source "WifiAdmin.java"


# static fields
.field public static final OPEN_INDEX:I = 0x0

.field public static final WPA2_INDEX:I = 0x2

.field public static final WPA_INDEX:I = 0x1


# instance fields
.field private mWifiConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const-string v0, "wifi"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public acquireWifiLock()V
    .locals 0

    .line 74
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void
.end method

.method public addNetWork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    .line 177
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    return-void
.end method

.method public changeWifiState()V
    .locals 1

    .line 56
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_0
    return-void
.end method

.method public checkState()I
    .locals 0

    .line 69
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    return p0
.end method

.method public closeWifi()V
    .locals 1

    .line 48
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public connetionConfiguration(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiConfigurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiConfigurations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    return-void
.end method

.method public createWifiLock()V
    .locals 2

    .line 87
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "test"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-void
.end method

.method public disConnectionWifi(I)V
    .locals 0

    .line 182
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    return-void
.end method

.method public disconnect()Z
    .locals 0

    .line 187
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result p0

    return p0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 148
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string p0, "NULL"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getConfiguration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiConfigurations:Ljava/util/List;

    .line 93
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public getIpAddress()I
    .locals 1

    .line 158
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 159
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 143
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string p0, "NULL"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNetWordId()I
    .locals 1

    .line 164
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 165
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 154
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string p0, "NULL"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getWifiInfo()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 171
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string p0, "NULL"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getWifiLevel()I
    .locals 1

    .line 123
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 124
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    return p0
.end method

.method public getWifiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiList:Ljava/util/List;

    .line 119
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiList:Ljava/util/List;

    return-object p0
.end method

.method public getWifiState()I
    .locals 0

    .line 199
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    return p0
.end method

.method public isWifiEnabled()Z
    .locals 0

    .line 64
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    return p0
.end method

.method public lookUpScan()Ljava/lang/StringBuffer;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseValueOf"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiList:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 134
    :goto_0
    iget-object v2, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Integer;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object v2, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public openWifi()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reassociate()Z
    .locals 0

    .line 195
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->reassociate()Z

    move-result p0

    return p0
.end method

.method public reconnect()Z
    .locals 0

    .line 191
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result p0

    return p0
.end method

.method public releaseWifiLock()V
    .locals 1

    .line 80
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_0
    return-void
.end method

.method public startScan()V
    .locals 1

    .line 108
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 113
    iget-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzj/zfenlly/wifi/WifiAdmin;->mWifiConfigurations:Ljava/util/List;

    return-void
.end method
