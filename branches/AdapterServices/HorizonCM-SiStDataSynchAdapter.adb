<?xml version="1.0" encoding="UTF-8"?>
<Repository:repository xmlns:Repository="http://www.tibco.com/xmlns/repo/types/2002" xmlns:AESDK="http://www.tibco.com/xmlns/aemeta/adapter/2002" xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <ADB:adapter xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" name="HorizonCM-SiStDataSynchAdapter">
        <AESDK:instanceId>HorizonCM-SiStDataSynchAdapter</AESDK:instanceId>
        <AESDK:startup>
            <AESDK:defaultStartup>active</AESDK:defaultStartup>
            <AESDK:banner>true</AESDK:banner>
            <AESDK:hasStdMicroAgent>true</AESDK:hasStdMicroAgent>
            <AESDK:stdMicroAgentName>COM.TIBCO.ADAPTER.adb.%%Deployment%%.%%InstanceId%%</AESDK:stdMicroAgentName>
            <AESDK:stdMicroAgentTimeout>10000</AESDK:stdMicroAgentTimeout>
            <AESDK:hasClassMicroAgent>%%HawkEnabled%%</AESDK:hasClassMicroAgent>
            <AESDK:classMicroAgentTimeout>10000</AESDK:classMicroAgentTimeout>
            <AESDK:classMicroAgentName>COM.TIBCO.adb.%%Deployment%%.%%InstanceId%%</AESDK:classMicroAgentName>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBHawkDefault</AESDK:name>
            </AESDK:startComponent>
            <AESDK:defaultMicroAgentSession>ADBHawkDefault</AESDK:defaultMicroAgentSession>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>JMSQueue</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBAgentJmsSession</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>HorizonCM_SiStChildDisabilityAdapter</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>HorizonCM_SiStChildHealthProblemAdapter</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>HorizonCM_SiStVisitAdapter</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>HorizonCM_SiStEducationAdapter</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>HorizonCM_SiStFamilyMemberAdapter</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>HorizonCM_SiStImmunizationAdapter</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>HorizonCM_SiStParticipationSupportAdapter</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>HorizonCM_SiStTaskAdapter</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>HorizonCM_SiStChildAdapter</AESDK:name>
            </AESDK:startComponent>
        </AESDK:startup>
        <AESDK:deployment>
            <AESDK:advisories xsi:nil="true"/>
            <AESDK:sessions>
                <AESDK:messaging>
                    <AESDK:rvSession isRef="true">#rvSession.ADBHawkDefault</AESDK:rvSession>
                    <AESDK:jmsSession isRef="true">#jmsSession.JMSQueue</AESDK:jmsSession>
                    <AESDK:jmsSession isRef="true">#jmsSession.ADBAgentJmsSession</AESDK:jmsSession>
                </AESDK:messaging>
            </AESDK:sessions>
            <AESDK:producers>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.HorizonCM_SiStChildDisabilityAdapter</AESDK:jmsPublisher>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.HorizonCM_SiStChildHealthProblemAdapter</AESDK:jmsPublisher>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.HorizonCM_SiStVisitAdapter</AESDK:jmsPublisher>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.HorizonCM_SiStEducationAdapter</AESDK:jmsPublisher>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.HorizonCM_SiStFamilyMemberAdapter</AESDK:jmsPublisher>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.HorizonCM_SiStImmunizationAdapter</AESDK:jmsPublisher>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.HorizonCM_SiStParticipationSupportAdapter</AESDK:jmsPublisher>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.HorizonCM_SiStTaskAdapter</AESDK:jmsPublisher>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.HorizonCM_SiStChildAdapter</AESDK:jmsPublisher>
            </AESDK:producers>
        </AESDK:deployment>
        <AESDK:timers xsi:nil="true"/>
        <AESDK:txControls xsi:nil="true"/>
        <AESDK:reporting>
            <AESDK:fileSink>
                <AESDK:fileName>%%DirTrace%%/%%Deployment%%.%%InstanceId%%.log</AESDK:fileName>
                <AESDK:fileCount>3</AESDK:fileCount>
                <AESDK:fileLimit>30000</AESDK:fileLimit>
                <AESDK:appendMode>true</AESDK:appendMode>
                <AESDK:name>fileSink</AESDK:name>
                <AESDK:role>
                    <AESDK:name>infoRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>debugRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>errorRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>warnRole</AESDK:name>
                </AESDK:role>
            </AESDK:fileSink>
            <AESDK:stdioSink>
                <AESDK:ioName>stdout</AESDK:ioName>
                <AESDK:name>stdioSink</AESDK:name>
                <AESDK:role>
                    <AESDK:name>infoRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>debugRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>errorRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>warnRole</AESDK:name>
                </AESDK:role>
            </AESDK:stdioSink>
        </AESDK:reporting>
        <AESDK:metadata>
            <AESDK:loadUrl isRef="true">/AESchemas/ae/ADB/adbmetadata.aeschema</AESDK:loadUrl>
            <AESDK:loadUrl isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema</AESDK:loadUrl>
        </AESDK:metadata>
        <ADB:hawk xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:help>TIB/Adapter for ActiveDatabase MicroAgent</ADB:help>
            <ADB:microAgentName>COM.TIBCO.adb.custom.%%Deployment%%.%%InstanceId%%</ADB:microAgentName>
            <ADB:sessionName isRef="true">#rvSession.ADBHawkDefault</ADB:sessionName>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Sets the debug level for the agent (possible values 0-3)</ADB:help>
                <ADB:name>setDebugLevel</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>The debug level</ADB:help>
                    <ADB:name>DebugLevel</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Retrieve configuration information for the agent.</ADB:help>
                <ADB:name>showConfiguration</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Verbose flag information</ADB:help>
                    <ADB:name>VerboseInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Debug level information</ADB:help>
                    <ADB:name>DebugLevelInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Poll interval information</ADB:help>
                    <ADB:name>PollIntervalInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Terminates the agent</ADB:help>
                <ADB:name>terminateADBagent</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Toggles the value of the verbose flag.</ADB:help>
                <ADB:name>toggleVerboseFlag</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Gets number of messages waiting in the event queue.</ADB:help>
                <ADB:name>getEventQueueSize</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>Specify subscriber or request/reply listener</ADB:help>
                    <ADB:name>Session</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>Subscriber,RequestReply</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Number of events in the queue</ADB:help>
                    <ADB:name>QueueCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Maximum number of events in queue (0 = unlimited)</ADB:help>
                    <ADB:name>QueueLimit</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about the data handled by the adapter instance</ADB:help>
                <ADB:name>getActivityStatistics</ADB:name>
                <ADB:index>Name</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Get statistics by either service or operation</ADB:help>
                    <ADB:name>Get Subtotal By</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>Service,Operation</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Service Name</ADB:help>
                    <ADB:name>Name</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about the data handled by a particular adapter service</ADB:help>
                <ADB:name>getActivityStatisticsByService</ADB:name>
                <ADB:index>Operation</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Name of which service to get the statistic for</ADB:help>
                    <ADB:name>Service Name</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>The type of operation this service provides</ADB:help>
                    <ADB:name>Operation</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Name of the top level schema processed by this service, or the subject of a request/response service</ADB:help>
                    <ADB:name>SchemaName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about one operation</ADB:help>
                <ADB:name>getActivityStatisticsByOperation</ADB:name>
                <ADB:index>ServiceName</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Name of the operation</ADB:help>
                    <ADB:name>Operation</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>fetch,insert,update,delete,request/reply,standard_operation,custom_operation</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Name of the Service</ADB:help>
                    <ADB:name>ServiceName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get operation counts of the current threads</ADB:help>
                <ADB:name>getThreadStatistics</ADB:name>
                <ADB:index>TaskType</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular thread</ADB:help>
                    <ADB:name>ThreadID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>A type that tells what part of the adapter this thread belongs to</ADB:help>
                    <ADB:name>ThreadType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Description of the tasks this thread processes</ADB:help>
                    <ADB:name>TaskType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Number of tasks processed by this thread</ADB:help>
                    <ADB:name>TaskCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about current count of elements in any internal queue</ADB:help>
                <ADB:name>getQueueStatistics</ADB:name>
                <ADB:index>QueueID</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular queue</ADB:help>
                    <ADB:name>QueueID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>A type that will match this queue to a thread or connection</ADB:help>
                    <ADB:name>QueueType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Current number of elements in the queue</ADB:help>
                    <ADB:name>QueueCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Maximum number of elements that can be held in this queue</ADB:help>
                    <ADB:name>MaxQueueSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Return the state and statistics for all the curent connections used by the adapter</ADB:help>
                <ADB:name>getConnectionStatistics</ADB:name>
                <ADB:index>ConnectionID</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular connection</ADB:help>
                    <ADB:name>ConnectionID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Describe the purpose of this connection serves to the adapter</ADB:help>
                    <ADB:name>ConnectionType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Current state of the connection</ADB:help>
                    <ADB:name>State</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of times this connection had been re-established</ADB:help>
                    <ADB:name>NumRetries</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of operations processed by this connection</ADB:help>
                    <ADB:name>TotalNumOperations</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of operations processed by this connection since the last reconnection</ADB:help>
                    <ADB:name>CurrentNumOperations</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the activity statistics</ADB:help>
                <ADB:name>resetActivityStatistics</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the thread statistics</ADB:help>
                <ADB:name>resetThreadStatistics</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the connection statistics</ADB:help>
                <ADB:name>resetConnectionStatistics</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Set the polling interval setting</ADB:help>
                <ADB:name>setPollingInterval</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>Polling interval in milliseconds</ADB:help>
                    <ADB:name>PollingInterval</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the current polling interval setting</ADB:help>
                <ADB:name>getPollingInterval</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Polling interval in milliseconds</ADB:help>
                    <ADB:name>PollingInterval</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Set the polling polling batch size setting</ADB:help>
                <ADB:name>setPollingBatchSize</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>Polling batch size</ADB:help>
                    <ADB:name>PollingBatchSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the current polling batch size setting</ADB:help>
                <ADB:name>getPollingBatchSize</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Polling batch size</ADB:help>
                    <ADB:name>PollingBatchSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the setting of the perfMon option</ADB:help>
                <ADB:name>getPerfMonSetting</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Value of PerfMon option</ADB:help>
                    <ADB:name>Setting</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
        </ADB:hawk>
        <AESDK:designer>
            <AESDK:advancedLogging>false</AESDK:advancedLogging>
            <AESDK:adapterVersion>sdk51</AESDK:adapterVersion>
            <AESDK:timeout>30000</AESDK:timeout>
            <AESDK:savePassword>true</AESDK:savePassword>
            <AESDK:lastDBType>32</AESDK:lastDBType>
            <AESDK:vendor>32</AESDK:vendor>
            <AESDK:convertOracleNumberToString>true</AESDK:convertOracleNumberToString>
            <AESDK:deployOperations>true</AESDK:deployOperations>
            <AESDK:showExpertSettings>false</AESDK:showExpertSettings>
            <AESDK:identifierCase>0</AESDK:identifierCase>
            <AESDK:lockedProperties>
                <AESDK:locked>
                    <AESDK:properties>defaultMicroAgentSession,defaultSession,searchUrl,defaultStartup</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Metadata URLs/LoadURL1</AESDK:resource>
                    <AESDK:properties>name,loadURL</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Metadata URLs/LoadURL</AESDK:resource>
                    <AESDK:properties>name,loadURL</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBAgentJmsSession</AESDK:resource>
                    <AESDK:properties>connectionFactoryType</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue</AESDK:resource>
                    <AESDK:properties>connectionFactoryType,name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStChildAdapter</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStTaskAdapter</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStParticipationSupportAdapter</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStImmunizationAdapter</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStFamilyMemberAdapter</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStEducationAdapter</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStVisitAdapter</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStChildHealthProblemAdapter</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStChildDisabilityAdapter</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBHawkDefault</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Adapter Services</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
            </AESDK:lockedProperties>
            <AESDK:fixedChildren>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Metadata URLs</AESDK:resource>
                    <AESDK:children>LoadURL,LoadURL1</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions</AESDK:resource>
                    <AESDK:children>ADBHawkDefault,JMSQueue</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue</AESDK:resource>
                    <AESDK:children>HorizonCM_SiStChildDisabilityAdapter,HorizonCM_SiStChildHealthProblemAdapter,HorizonCM_SiStVisitAdapter,HorizonCM_SiStEducationAdapter,HorizonCM_SiStFamilyMemberAdapter,HorizonCM_SiStImmunizationAdapter,HorizonCM_SiStParticipationSupportAdapter,HorizonCM_SiStTaskAdapter,HorizonCM_SiStChildAdapter</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStChildAdapter</AESDK:resource>
                    <AESDK:children>P_Child</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStTaskAdapter</AESDK:resource>
                    <AESDK:children>P_Task</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStParticipationSupportAdapter</AESDK:resource>
                    <AESDK:children>P_ParticipationSupport</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStImmunizationAdapter</AESDK:resource>
                    <AESDK:children>P_Immunization</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStFamilyMemberAdapter</AESDK:resource>
                    <AESDK:children>P_FamilyMember</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStEducationAdapter</AESDK:resource>
                    <AESDK:children>P_Education</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStVisitAdapter</AESDK:resource>
                    <AESDK:children>P_Visit</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStChildHealthProblemAdapter</AESDK:resource>
                    <AESDK:children>P_ChildHealthProblem</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStChildDisabilityAdapter</AESDK:resource>
                    <AESDK:children>P_ChildDisability</AESDK:children>
                </AESDK:fixed>
            </AESDK:fixedChildren>
            <AESDK:resourceDescriptions>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStChildAdapter</AESDK:resource>
                    <AESDK:description>Created for service HorizonCM_SiStChildAdapter.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStTaskAdapter</AESDK:resource>
                    <AESDK:description>Created for service HorizonCM_SiStTaskAdapter.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStParticipationSupportAdapter</AESDK:resource>
                    <AESDK:description>Created for service HorizonCM_SiStParticipationSupportAdapter.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStImmunizationAdapter</AESDK:resource>
                    <AESDK:description>Created for service HorizonCM_SiStImmunizationAdapter.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStFamilyMemberAdapter</AESDK:resource>
                    <AESDK:description>Created for service HorizonCM_SiStFamilyMemberAdapter.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStEducationAdapter</AESDK:resource>
                    <AESDK:description>Created for service HorizonCM_SiStEducationAdapter.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStVisitAdapter</AESDK:resource>
                    <AESDK:description>Created for service HorizonCM_SiStVisitAdapter.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStChildHealthProblemAdapter</AESDK:resource>
                    <AESDK:description>Created for service HorizonCM_SiStChildHealthProblemAdapter.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/HorizonCM_SiStChildDisabilityAdapter</AESDK:resource>
                    <AESDK:description>Created for service HorizonCM_SiStChildDisabilityAdapter.</AESDK:description>
                </AESDK:node>
            </AESDK:resourceDescriptions>
            <AESDK:adapterTester>
                <AESDK:exe>D:\tibco\adapter\adadb\6.3\bin\adbagent.exe</AESDK:exe>
                <AESDK:args>--run --propFile</AESDK:args>
                <AESDK:workingDir>D:\AdapterworkingDir1</AESDK:workingDir>
                <AESDK:HorizonCM_SiStDataSync>
                    <AESDK:Destinations>
                        <AESDK:ADBPrefix>"WVI.GICT.SERVICE.SS.HorizonCM.ADB"</AESDK:ADBPrefix>
                    </AESDK:Destinations>
                </AESDK:HorizonCM_SiStDataSync>
            </AESDK:adapterTester>
        </AESDK:designer>
        <ADB:designer xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" xsi:nil="true"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:alerter>false</ADB:alerter>
                <ADB:name>HorizonCM_SiStChildHealthProblemAdapter</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/AdapterServices/HorizonCM-SiStDataSynchAdapter.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:publishingTable>P_ChildHealthProblem</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_ChildHealthProblem</ADB:classReference>
                <ADB:sourceTable>ChildHealthProblem</ADB:sourceTable>
                <ADB:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.ChildHealthProblem</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.HorizonCM_SiStChildHealthProblemAdapter</ADB:endpointReference>
                <ADB:columnsToPublish>ChildGUID</ADB:columnsToPublish>
                <ADB:columnsToPublish>HealthProblemCode</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedDate</ADB:columnsToPublish>
                <ADB:userDefinedKey>ChildGUID</ADB:userDefinedKey>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_ChildHealthProblem</ADB:name>
                        <ADB:userKeys>ChildGUID</ADB:userKeys>
                    </ADB:table>
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>Child</ADB:name>
                        <ADB:col>SupportOfficeChildName,false,string,nvarchar,50,0, ,false,false,false, </ADB:col>
                        <ADB:col>FamilyName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>GivenName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>CommunityID,false,string,nvarchar,6,0, ,false,false,false, </ADB:col>
                        <ADB:col>Gender,false,string,nchar,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorAcct,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorshipDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>RegisteredChildStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeaving,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDateVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApprovedBy,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApproverName,false,string,nvarchar,100,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildParticipationApproveComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PeopleGroup,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLanguage,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildOccupation,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>WhenChildWorks,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildWorksWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HoursWorkedPerWeek,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChoresPerformed,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteGame,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastReviewDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>LastSightedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>Religion,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTraining,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteSubject,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTrainingVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ExplanationWhyNotInSchool,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotinSchoolComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>YearsOfFormalEducation,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>FormalEducationAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>VocationalTrainAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>NonFormalEduAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Height,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>Weight,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>WeightVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthCardVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>ConfidentialData,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>DisabilityComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ZScore,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Brothers,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>Sisters,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLivesWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AddCorrComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>MiscChildComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipatesHealthNutritionActivities,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>WeightDecreasedorRemainConstant,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>MUAC,false,r8,numeric,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>MUACNutritionalStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotAttendingRegularly,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AttendEducationVocLearnRegularly,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastIDCardDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>PictureFolderCode,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeavingComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>CameraImageFilename,false,string,nvarchar,20,0, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PhotoURL,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNoCGVCreated,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotEnrolledInEducationDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                    </ADB:table>
                </ADB:schemas>
            </ADB:publisher>
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:alerter>false</ADB:alerter>
                <ADB:name>HorizonCM_SiStChildDisabilityAdapter</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/AdapterServices/HorizonCM-SiStDataSynchAdapter.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:publishingTable>P_ChildDisability</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_ChildDisability</ADB:classReference>
                <ADB:sourceTable>ChildDisability</ADB:sourceTable>
                <ADB:columnsToPublish>ChildGUID</ADB:columnsToPublish>
                <ADB:columnsToPublish>DisabilityCode</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedDate</ADB:columnsToPublish>
                <ADB:userDefinedKey>ChildGUID</ADB:userDefinedKey>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_ChildDisability</ADB:name>
                        <ADB:userKeys>ChildGUID</ADB:userKeys>
                    </ADB:table>
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>Child</ADB:name>
                        <ADB:col>SupportOfficeChildName,false,string,nvarchar,50,0, ,false,false,false, </ADB:col>
                        <ADB:col>FamilyName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>GivenName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>CommunityID,false,string,nvarchar,6,0, ,false,false,false, </ADB:col>
                        <ADB:col>Gender,false,string,nchar,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorAcct,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorshipDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>RegisteredChildStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeaving,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDateVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApprovedBy,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApproverName,false,string,nvarchar,100,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildParticipationApproveComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PeopleGroup,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLanguage,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildOccupation,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>WhenChildWorks,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildWorksWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HoursWorkedPerWeek,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChoresPerformed,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteGame,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastReviewDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>LastSightedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>Religion,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTraining,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteSubject,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTrainingVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ExplanationWhyNotInSchool,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotinSchoolComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>YearsOfFormalEducation,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>FormalEducationAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>VocationalTrainAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>NonFormalEduAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Height,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>Weight,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>WeightVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthCardVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthProbComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ConfidentialData,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>DisabilityComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ZScore,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Brothers,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>Sisters,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLivesWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AddCorrComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>MiscChildComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipatesHealthNutritionActivities,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>WeightDecreasedorRemainConstant,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>MUAC,false,r8,numeric,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>MUACNutritionalStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotAttendingRegularly,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AttendEducationVocLearnRegularly,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastIDCardDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>PictureFolderCode,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeavingComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>CameraImageFilename,false,string,nvarchar,20,0, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PhotoURL,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNoCGVCreated,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotEnrolledInEducationDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.ChildDisability</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.HorizonCM_SiStChildDisabilityAdapter</ADB:endpointReference>
            </ADB:publisher>
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:alerter>false</ADB:alerter>
                <ADB:name>HorizonCM_SiStVisitAdapter</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/AdapterServices/HorizonCM-SiStDataSynchAdapter.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:publishingTable>P_Visit</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_Visit</ADB:classReference>
                <ADB:sourceTable>Visit</ADB:sourceTable>
                <ADB:columnsToPublish>VisitID</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChildGUID</ADB:columnsToPublish>
                <ADB:columnsToPublish>VisitorType</ADB:columnsToPublish>
                <ADB:columnsToPublish>VisitType</ADB:columnsToPublish>
                <ADB:columnsToPublish>VisitDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>VisitorFamilyName</ADB:columnsToPublish>
                <ADB:columnsToPublish>VisitorGivenName</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChildPresent</ADB:columnsToPublish>
                <ADB:columnsToPublish>ReasonNotPresent</ADB:columnsToPublish>
                <ADB:columnsToPublish>Comment</ADB:columnsToPublish>
                <ADB:columnsToPublish>BatchNumber</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>LegacySerialNo</ADB:columnsToPublish>
                <ADB:userDefinedKey>ChildGUID</ADB:userDefinedKey>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_Visit</ADB:name>
                        <ADB:userKeys>ChildGUID</ADB:userKeys>
                    </ADB:table>
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>Child</ADB:name>
                        <ADB:col>SupportOfficeChildName,false,string,nvarchar,50,0, ,false,false,false, </ADB:col>
                        <ADB:col>FamilyName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>GivenName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>CommunityID,false,string,nvarchar,6,0, ,false,false,false, </ADB:col>
                        <ADB:col>Gender,false,string,nchar,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorAcct,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorshipDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>RegisteredChildStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeaving,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDateVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApprovedBy,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApproverName,false,string,nvarchar,100,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildParticipationApproveComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PeopleGroup,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLanguage,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildOccupation,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>WhenChildWorks,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildWorksWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HoursWorkedPerWeek,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChoresPerformed,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteGame,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastReviewDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>LastSightedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>Religion,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTraining,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteSubject,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTrainingVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ExplanationWhyNotInSchool,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotinSchoolComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>YearsOfFormalEducation,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>FormalEducationAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>VocationalTrainAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>NonFormalEduAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Height,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>Weight,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>WeightVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthCardVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthProbComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ConfidentialData,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>DisabilityComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ZScore,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Brothers,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>Sisters,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLivesWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AddCorrComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>MiscChildComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipatesHealthNutritionActivities,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>WeightDecreasedorRemainConstant,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>MUAC,false,r8,numeric,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>MUACNutritionalStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotAttendingRegularly,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AttendEducationVocLearnRegularly,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastIDCardDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>PictureFolderCode,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeavingComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>CameraImageFilename,false,string,nvarchar,20,0, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PhotoURL,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNoCGVCreated,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotEnrolledInEducationDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.Visit</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.HorizonCM_SiStVisitAdapter</ADB:endpointReference>
            </ADB:publisher>
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:alerter>false</ADB:alerter>
                <ADB:name>HorizonCM_SiStEducationAdapter</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/AdapterServices/HorizonCM-SiStDataSynchAdapter.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:publishingTable>P_Education</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_Education</ADB:classReference>
                <ADB:sourceTable>Education</ADB:sourceTable>
                <ADB:columnsToPublish>EducationID</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChildGUID</ADB:columnsToPublish>
                <ADB:columnsToPublish>Type</ADB:columnsToPublish>
                <ADB:columnsToPublish>EducationLevel</ADB:columnsToPublish>
                <ADB:columnsToPublish>Grade</ADB:columnsToPublish>
                <ADB:columnsToPublish>SchoolName</ADB:columnsToPublish>
                <ADB:columnsToPublish>CourseCode</ADB:columnsToPublish>
                <ADB:columnsToPublish>StartDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>EndDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>RecordedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>Comment</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>LegacySerialNo</ADB:columnsToPublish>
                <ADB:userDefinedKey>ChildGUID</ADB:userDefinedKey>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_Education</ADB:name>
                        <ADB:userKeys>ChildGUID</ADB:userKeys>
                    </ADB:table>
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>Child</ADB:name>
                        <ADB:col>SupportOfficeChildName,false,string,nvarchar,50,0, ,false,false,false, </ADB:col>
                        <ADB:col>FamilyName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>GivenName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>CommunityID,false,string,nvarchar,6,0, ,false,false,false, </ADB:col>
                        <ADB:col>Gender,false,string,nchar,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorAcct,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorshipDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>RegisteredChildStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeaving,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDateVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApprovedBy,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApproverName,false,string,nvarchar,100,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildParticipationApproveComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PeopleGroup,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLanguage,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildOccupation,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>WhenChildWorks,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildWorksWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HoursWorkedPerWeek,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChoresPerformed,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteGame,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastReviewDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>LastSightedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>Religion,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTraining,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteSubject,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTrainingVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ExplanationWhyNotInSchool,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotinSchoolComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>YearsOfFormalEducation,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>FormalEducationAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>VocationalTrainAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>NonFormalEduAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Height,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>Weight,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>WeightVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthCardVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthProbComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ConfidentialData,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>DisabilityComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ZScore,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Brothers,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>Sisters,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLivesWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AddCorrComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>MiscChildComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipatesHealthNutritionActivities,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>WeightDecreasedorRemainConstant,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>MUAC,false,r8,numeric,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>MUACNutritionalStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotAttendingRegularly,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AttendEducationVocLearnRegularly,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastIDCardDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>PictureFolderCode,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeavingComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>CameraImageFilename,false,string,nvarchar,20,0, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PhotoURL,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNoCGVCreated,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotEnrolledInEducationDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.Education</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.HorizonCM_SiStEducationAdapter</ADB:endpointReference>
            </ADB:publisher>
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:alerter>false</ADB:alerter>
                <ADB:name>HorizonCM_SiStFamilyMemberAdapter</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/AdapterServices/HorizonCM-SiStDataSynchAdapter.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:publishingTable>P_FamilyMember</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_FamilyMember</ADB:classReference>
                <ADB:sourceTable>FamilyMember</ADB:sourceTable>
                <ADB:columnsToPublish>FamilyMemberID</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChildGUID</ADB:columnsToPublish>
                <ADB:columnsToPublish>Relation</ADB:columnsToPublish>
                <ADB:columnsToPublish>Situation</ADB:columnsToPublish>
                <ADB:columnsToPublish>MainHouseholdProvider</ADB:columnsToPublish>
                <ADB:columnsToPublish>PrimaryCareGiver</ADB:columnsToPublish>
                <ADB:columnsToPublish>GivenName</ADB:columnsToPublish>
                <ADB:columnsToPublish>FamilyName</ADB:columnsToPublish>
                <ADB:columnsToPublish>BirthDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>Gender</ADB:columnsToPublish>
                <ADB:columnsToPublish>HealthStatus</ADB:columnsToPublish>
                <ADB:columnsToPublish>HealthStatusComment</ADB:columnsToPublish>
                <ADB:columnsToPublish>Occupation</ADB:columnsToPublish>
                <ADB:columnsToPublish>YearsOfFormalEducation</ADB:columnsToPublish>
                <ADB:columnsToPublish>EmploymentStatus</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>LegacySerialNo</ADB:columnsToPublish>
                <ADB:userDefinedKey>ChildGUID</ADB:userDefinedKey>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_FamilyMember</ADB:name>
                        <ADB:userKeys>ChildGUID</ADB:userKeys>
                    </ADB:table>
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>Child</ADB:name>
                        <ADB:col>SupportOfficeChildName,false,string,nvarchar,50,0, ,false,false,false, </ADB:col>
                        <ADB:col>FamilyName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>GivenName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>CommunityID,false,string,nvarchar,6,0, ,false,false,false, </ADB:col>
                        <ADB:col>Gender,false,string,nchar,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorAcct,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorshipDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>RegisteredChildStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeaving,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDateVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApprovedBy,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApproverName,false,string,nvarchar,100,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildParticipationApproveComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PeopleGroup,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLanguage,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildOccupation,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>WhenChildWorks,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildWorksWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HoursWorkedPerWeek,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChoresPerformed,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteGame,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastReviewDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>LastSightedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>Religion,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTraining,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteSubject,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTrainingVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ExplanationWhyNotInSchool,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotinSchoolComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>YearsOfFormalEducation,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>FormalEducationAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>VocationalTrainAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>NonFormalEduAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Height,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>Weight,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>WeightVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthCardVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthProbComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ConfidentialData,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>DisabilityComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ZScore,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Brothers,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>Sisters,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLivesWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AddCorrComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>MiscChildComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipatesHealthNutritionActivities,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>WeightDecreasedorRemainConstant,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>MUAC,false,r8,numeric,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>MUACNutritionalStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotAttendingRegularly,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AttendEducationVocLearnRegularly,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastIDCardDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>PictureFolderCode,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeavingComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>CameraImageFilename,false,string,nvarchar,20,0, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PhotoURL,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNoCGVCreated,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotEnrolledInEducationDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.FamilyMember</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.HorizonCM_SiStFamilyMemberAdapter</ADB:endpointReference>
            </ADB:publisher>
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:alerter>false</ADB:alerter>
                <ADB:name>HorizonCM_SiStImmunizationAdapter</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/AdapterServices/HorizonCM-SiStDataSynchAdapter.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:publishingTable>P_Immunization</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_Immunization</ADB:classReference>
                <ADB:sourceTable>Immunization</ADB:sourceTable>
                <ADB:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.Immunization</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.HorizonCM_SiStImmunizationAdapter</ADB:endpointReference>
                <ADB:columnsToPublish>ChildGUID</ADB:columnsToPublish>
                <ADB:columnsToPublish>Date</ADB:columnsToPublish>
                <ADB:columnsToPublish>WasChildSighted</ADB:columnsToPublish>
                <ADB:columnsToPublish>Comment</ADB:columnsToPublish>
                <ADB:columnsToPublish>BatchNumber</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>LegacySerialNo</ADB:columnsToPublish>
                <ADB:columnsToPublish>ImmunizationID</ADB:columnsToPublish>
                <ADB:columnsToPublish>ImmunizationCode</ADB:columnsToPublish>
                <ADB:userDefinedKey>ChildGUID</ADB:userDefinedKey>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_Immunization</ADB:name>
                        <ADB:userKeys>ChildGUID</ADB:userKeys>
                    </ADB:table>
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>Child</ADB:name>
                        <ADB:col>SupportOfficeChildName,false,string,nvarchar,50,0, ,false,false,false, </ADB:col>
                        <ADB:col>FamilyName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>GivenName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>CommunityID,false,string,nvarchar,6,0, ,false,false,false, </ADB:col>
                        <ADB:col>Gender,false,string,nchar,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorAcct,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorshipDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>RegisteredChildStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeaving,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDateVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApprovedBy,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApproverName,false,string,nvarchar,100,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildParticipationApproveComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PeopleGroup,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLanguage,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildOccupation,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>WhenChildWorks,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildWorksWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HoursWorkedPerWeek,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChoresPerformed,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteGame,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastReviewDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>LastSightedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>Religion,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTraining,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteSubject,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTrainingVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ExplanationWhyNotInSchool,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotinSchoolComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>YearsOfFormalEducation,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>FormalEducationAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>VocationalTrainAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>NonFormalEduAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Height,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>Weight,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>WeightVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthCardVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>ConfidentialData,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>DisabilityComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ZScore,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Brothers,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>Sisters,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLivesWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AddCorrComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>MiscChildComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipatesHealthNutritionActivities,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>WeightDecreasedorRemainConstant,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>MUAC,false,r8,numeric,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>MUACNutritionalStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotAttendingRegularly,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AttendEducationVocLearnRegularly,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastIDCardDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>PictureFolderCode,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeavingComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>CameraImageFilename,false,string,nvarchar,20,0, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PhotoURL,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNoCGVCreated,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotEnrolledInEducationDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                    </ADB:table>
                </ADB:schemas>
            </ADB:publisher>
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:alerter>false</ADB:alerter>
                <ADB:name>HorizonCM_SiStParticipationSupportAdapter</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/AdapterServices/HorizonCM-SiStDataSynchAdapter.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:publishingTable>P_ParticipationSupport</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_ParticipationSupport</ADB:classReference>
                <ADB:sourceTable>ParticipationSupport</ADB:sourceTable>
                <ADB:columnsToPublish>ParticipationSupportID</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChildGUID</ADB:columnsToPublish>
                <ADB:columnsToPublish>Type</ADB:columnsToPublish>
                <ADB:columnsToPublish>TypeValue</ADB:columnsToPublish>
                <ADB:columnsToPublish>Date</ADB:columnsToPublish>
                <ADB:columnsToPublish>Comment</ADB:columnsToPublish>
                <ADB:columnsToPublish>WasChildSighted</ADB:columnsToPublish>
                <ADB:columnsToPublish>BatchNumber</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>LegacySerialNo</ADB:columnsToPublish>
                <ADB:userDefinedKey>ChildGUID</ADB:userDefinedKey>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_ParticipationSupport</ADB:name>
                        <ADB:userKeys>ChildGUID</ADB:userKeys>
                    </ADB:table>
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>Child</ADB:name>
                        <ADB:col>SupportOfficeChildName,false,string,nvarchar,50,0, ,false,false,false, </ADB:col>
                        <ADB:col>FamilyName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>GivenName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>CommunityID,false,string,nvarchar,6,0, ,false,false,false, </ADB:col>
                        <ADB:col>Gender,false,string,nchar,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorAcct,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorshipDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>RegisteredChildStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeaving,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDateVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApprovedBy,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApproverName,false,string,nvarchar,100,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildParticipationApproveComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PeopleGroup,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLanguage,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildOccupation,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>WhenChildWorks,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildWorksWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HoursWorkedPerWeek,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChoresPerformed,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteGame,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastReviewDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>LastSightedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>Religion,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTraining,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteSubject,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTrainingVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ExplanationWhyNotInSchool,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotinSchoolComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>YearsOfFormalEducation,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>FormalEducationAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>VocationalTrainAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>NonFormalEduAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Height,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>Weight,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>WeightVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthCardVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthProbComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ConfidentialData,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>DisabilityComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ZScore,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Brothers,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>Sisters,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLivesWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AddCorrComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>MiscChildComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipatesHealthNutritionActivities,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>WeightDecreasedorRemainConstant,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>MUAC,false,r8,numeric,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>MUACNutritionalStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotAttendingRegularly,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AttendEducationVocLearnRegularly,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastIDCardDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>PictureFolderCode,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeavingComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>CameraImageFilename,false,string,nvarchar,20,0, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PhotoURL,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNoCGVCreated,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotEnrolledInEducationDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.ParticipationSupport</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.HorizonCM_SiStParticipationSupportAdapter</ADB:endpointReference>
            </ADB:publisher>
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:alerter>false</ADB:alerter>
                <ADB:name>HorizonCM_SiStTaskAdapter</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/AdapterServices/HorizonCM-SiStDataSynchAdapter.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:publishingTable>P_Task</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_Task</ADB:classReference>
                <ADB:sourceTable>Task</ADB:sourceTable>
                <ADB:columnsToPublish>TaskID</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChildGUID</ADB:columnsToPublish>
                <ADB:columnsToPublish>Category</ADB:columnsToPublish>
                <ADB:columnsToPublish>CorrespondenceID</ADB:columnsToPublish>
                <ADB:columnsToPublish>CSMCode</ADB:columnsToPublish>
                <ADB:columnsToPublish>Data</ADB:columnsToPublish>
                <ADB:columnsToPublish>DueDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>Resolved</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedDate</ADB:columnsToPublish>
                <ADB:userDefinedKey>ChildGUID</ADB:userDefinedKey>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_Task</ADB:name>
                        <ADB:userKeys>ChildGUID</ADB:userKeys>
                    </ADB:table>
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>Child</ADB:name>
                        <ADB:col>SupportOfficeChildName,false,string,nvarchar,50,0, ,false,false,false, </ADB:col>
                        <ADB:col>FamilyName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>GivenName,false,string,nvarchar,56,0, ,false,false,false, </ADB:col>
                        <ADB:col>CommunityID,false,string,nvarchar,6,0, ,false,false,false, </ADB:col>
                        <ADB:col>Gender,false,string,nchar,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorAcct,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>SponsorshipDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>RegisteredChildStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeaving,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>BirthDateVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApprovedBy,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipationApproverName,false,string,nvarchar,100,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildParticipationApproveComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PeopleGroup,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLanguage,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildOccupation,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>WhenChildWorks,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildWorksWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HoursWorkedPerWeek,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChoresPerformed,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteGame,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastReviewDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>LastSightedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>Religion,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTraining,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>FavoriteSubject,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>InvolvedinEducationTrainingVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ExplanationWhyNotInSchool,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotinSchoolComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>YearsOfFormalEducation,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>FormalEducationAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>VocationalTrainAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>NonFormalEduAttVerification,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Height,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>Weight,false,r8,decimal,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>WeightVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusVerifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthCardVerified,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthProbComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ConfidentialData,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>DisabilityComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ZScore,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>Brothers,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>Sisters,false,i4,tinyint,3,0, ,false,false,false, </ADB:col>
                        <ADB:col>ChildLivesWith,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AddCorrComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>MiscChildComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ParticipatesHealthNutritionActivities,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>WeightDecreasedorRemainConstant,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>MUAC,false,r8,numeric,6,2, ,false,false,false, </ADB:col>
                        <ADB:col>MUACNutritionalStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotAttendingRegularly,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>AttendEducationVocLearnRegularly,false,i4,bit,1,0, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>NutritionIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusIssueFollowUpStatus,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ImmunizationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>LastIDCardDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>PictureFolderCode,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonForLeavingComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>CameraImageFilename,false,string,nvarchar,20,0, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>CreatedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>ModifiedBy,false,i4,int,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>EducationComment,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>PhotoURL,false,string,nvarchar,4000,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNoCGVCreated,false,string,nvarchar,10,0, ,false,false,false, </ADB:col>
                        <ADB:col>ReasonNotEnrolledInEducationDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                        <ADB:col>HealthStatusModifiedDate,false,adbDateTime,datetime,23,3, ,false,false,false, </ADB:col>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.Task</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.HorizonCM_SiStTaskAdapter</ADB:endpointReference>
            </ADB:publisher>
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>INSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:alerter>false</ADB:alerter>
                <ADB:name>HorizonCM_SiStChildAdapter</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/AdapterServices/HorizonCM-SiStDataSynchAdapter.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:publishingTable>P_Child</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_Child</ADB:classReference>
                <ADB:sourceTable>Child</ADB:sourceTable>
                <ADB:columnsToPublish>ChildGUID</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChildID</ADB:columnsToPublish>
                <ADB:columnsToPublish>SupportOfficeChildName</ADB:columnsToPublish>
                <ADB:columnsToPublish>FamilyName</ADB:columnsToPublish>
                <ADB:columnsToPublish>GivenName</ADB:columnsToPublish>
                <ADB:columnsToPublish>ProjectID</ADB:columnsToPublish>
                <ADB:columnsToPublish>CommunityID</ADB:columnsToPublish>
                <ADB:columnsToPublish>CountryID</ADB:columnsToPublish>
                <ADB:columnsToPublish>Gender</ADB:columnsToPublish>
                <ADB:columnsToPublish>SponsorAcct</ADB:columnsToPublish>
                <ADB:columnsToPublish>SupportOffice</ADB:columnsToPublish>
                <ADB:columnsToPublish>SponsorshipDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>RegisteredChildStatus</ADB:columnsToPublish>
                <ADB:columnsToPublish>ReasonForLeaving</ADB:columnsToPublish>
                <ADB:columnsToPublish>BirthDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>BirthDateVerified</ADB:columnsToPublish>
                <ADB:columnsToPublish>ParticipationApprovedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>ParticipationApproverName</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChildParticipationApproveComment</ADB:columnsToPublish>
                <ADB:columnsToPublish>PeopleGroup</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChildLanguage</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChildOccupation</ADB:columnsToPublish>
                <ADB:columnsToPublish>WhenChildWorks</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChildWorksWith</ADB:columnsToPublish>
                <ADB:columnsToPublish>HoursWorkedPerWeek</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChoresPerformed</ADB:columnsToPublish>
                <ADB:columnsToPublish>FavoriteGame</ADB:columnsToPublish>
                <ADB:columnsToPublish>LastReviewDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>LastSightedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>Religion</ADB:columnsToPublish>
                <ADB:columnsToPublish>InvolvedinEducationTraining</ADB:columnsToPublish>
                <ADB:columnsToPublish>FavoriteSubject</ADB:columnsToPublish>
                <ADB:columnsToPublish>InvolvedinEducationTrainingVerifiedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>ExplanationWhyNotInSchool</ADB:columnsToPublish>
                <ADB:columnsToPublish>ReasonNotinSchoolComment</ADB:columnsToPublish>
                <ADB:columnsToPublish>YearsOfFormalEducation</ADB:columnsToPublish>
                <ADB:columnsToPublish>FormalEducationAttVerification</ADB:columnsToPublish>
                <ADB:columnsToPublish>VocationalTrainAttVerification</ADB:columnsToPublish>
                <ADB:columnsToPublish>NonFormalEduAttVerification</ADB:columnsToPublish>
                <ADB:columnsToPublish>Height</ADB:columnsToPublish>
                <ADB:columnsToPublish>Weight</ADB:columnsToPublish>
                <ADB:columnsToPublish>WeightVerifiedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>NutritionComment</ADB:columnsToPublish>
                <ADB:columnsToPublish>HealthStatus</ADB:columnsToPublish>
                <ADB:columnsToPublish>HealthStatusComment</ADB:columnsToPublish>
                <ADB:columnsToPublish>HealthStatusVerifiedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>ImmunizationStatus</ADB:columnsToPublish>
                <ADB:columnsToPublish>HealthCardVerified</ADB:columnsToPublish>
                <ADB:columnsToPublish>HealthProbComment</ADB:columnsToPublish>
                <ADB:columnsToPublish>ConfidentialData</ADB:columnsToPublish>
                <ADB:columnsToPublish>DisabilityComment</ADB:columnsToPublish>
                <ADB:columnsToPublish>ZScore</ADB:columnsToPublish>
                <ADB:columnsToPublish>Brothers</ADB:columnsToPublish>
                <ADB:columnsToPublish>Sisters</ADB:columnsToPublish>
                <ADB:columnsToPublish>ChildLivesWith</ADB:columnsToPublish>
                <ADB:columnsToPublish>AddCorrComment</ADB:columnsToPublish>
                <ADB:columnsToPublish>MiscChildComment</ADB:columnsToPublish>
                <ADB:columnsToPublish>ParticipatesHealthNutritionActivities</ADB:columnsToPublish>
                <ADB:columnsToPublish>WeightDecreasedorRemainConstant</ADB:columnsToPublish>
                <ADB:columnsToPublish>MUAC</ADB:columnsToPublish>
                <ADB:columnsToPublish>MUACNutritionalStatus</ADB:columnsToPublish>
                <ADB:columnsToPublish>ReasonNotAttendingRegularly</ADB:columnsToPublish>
                <ADB:columnsToPublish>AttendEducationVocLearnRegularly</ADB:columnsToPublish>
                <ADB:columnsToPublish>NutritionIssueFollowUpDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>EducationIssueFollowUpDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>ImmunizationIssueFollowUpDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>HealthStatusIssueFollowUpDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>NutritionIssueFollowUpStatus</ADB:columnsToPublish>
                <ADB:columnsToPublish>EducationIssueFollowUpStatus</ADB:columnsToPublish>
                <ADB:columnsToPublish>ImmunizationIssueFollowUpStatus</ADB:columnsToPublish>
                <ADB:columnsToPublish>HealthStatusIssueFollowUpStatus</ADB:columnsToPublish>
                <ADB:columnsToPublish>ImmunizationComment</ADB:columnsToPublish>
                <ADB:columnsToPublish>LastIDCardDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>PictureFolderCode</ADB:columnsToPublish>
                <ADB:columnsToPublish>ReasonForLeavingComment</ADB:columnsToPublish>
                <ADB:columnsToPublish>CameraImageFilename</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>CreatedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>ModifiedBy</ADB:columnsToPublish>
                <ADB:columnsToPublish>EducationComment</ADB:columnsToPublish>
                <ADB:columnsToPublish>PhotoURL</ADB:columnsToPublish>
                <ADB:columnsToPublish>ReasonNoCGVCreated</ADB:columnsToPublish>
                <ADB:columnsToPublish>ReasonNotEnrolledInEducationDate</ADB:columnsToPublish>
                <ADB:columnsToPublish>HealthStatusModifiedDate</ADB:columnsToPublish>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_Child</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.Child</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.HorizonCM_SiStChildAdapter</ADB:endpointReference>
            </ADB:publisher>
        </ADB:operations>
        <ADB:activedb xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:defaultDataSource xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:name>%%HorizonCM_SiStDataSync/AdapterServices/OdbcCfg/OdbcDsn%%</ADB:name>
                <ADB:user>%%HorizonCM_SiStDataSync/AdapterServices/OdbcCfg/username%%</ADB:user>
                <ADB:driver>%%HorizonCM_SiStDataSync/AdapterServices/OdbcCfg/jdbcDriver%%</ADB:driver>
                <ADB:url>%%HorizonCM_SiStDataSync/AdapterServices/OdbcCfg/jdbcUrl%%</ADB:url>
                <ADB:disConnCode/>
                <ADB:dbmsType>SQLSERVER</ADB:dbmsType>
                <ADB:password>%%HorizonCM_SiStDataSync/AdapterServices/OdbcCfg/password%%</ADB:password>
                <ADB:defaultSchema>%%HorizonCM_SiStDataSync/AdapterServices/OdbcCfg/DefaultSchema%%</ADB:defaultSchema>
            </ADB:defaultDataSource>
            <ADB:threadCount xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:commInterfaces>1</ADB:commInterfaces>
                <ADB:commRRInterfaces>1</ADB:commRRInterfaces>
                <ADB:dbInterfaces>1</ADB:dbInterfaces>
                <ADB:dbRRInterfaces>1</ADB:dbRRInterfaces>
                <ADB:pubManagers>1</ADB:pubManagers>
                <ADB:subManagers>1</ADB:subManagers>
            </ADB:threadCount>
            <ADB:agentOptions xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:debug>2</ADB:debug>
                <ADB:verbose>on</ADB:verbose>
                <ADB:payload>false</ADB:payload>
                <ADB:useTraceFile/>
                <ADB:publishChildData>on</ADB:publishChildData>
                <ADB:poll>5000</ADB:poll>
                <ADB:maxRows>0</ADB:maxRows>
                <ADB:usePollingBatchSize>false</ADB:usePollingBatchSize>
                <ADB:batchPubStatusUpdates>off</ADB:batchPubStatusUpdates>
                <ADB:pubBatchConfirmSize>0</ADB:pubBatchConfirmSize>
                <ADB:pubBatchConfirmTimeout>10000</ADB:pubBatchConfirmTimeout>
                <ADB:subBatchCommitSize>0</ADB:subBatchCommitSize>
                <ADB:subBatchCommitTimeout>10000</ADB:subBatchCommitTimeout>
                <ADB:subBulkInsertSize>1</ADB:subBulkInsertSize>
                <ADB:rvMaxQueueSize>0</ADB:rvMaxQueueSize>
                <ADB:useExceptTable>on</ADB:useExceptTable>
                <ADB:rebuildAfterException>off</ADB:rebuildAfterException>
                <ADB:encoding>ASCII</ADB:encoding>
                <ADB:jmsDestinationPrefix>%%Domain%%.%%Deployment%%.adb.%%InstanceId%%</ADB:jmsDestinationPrefix>
                <ADB:retryTotal>3</ADB:retryTotal>
                <ADB:sleepBetweenRetries>10000</ADB:sleepBetweenRetries>
                <ADB:retryBeforeSuspend>1</ADB:retryBeforeSuspend>
                <ADB:stopOnRetryFail>RETRY_FAIL_LAST_SERVICE</ADB:stopOnRetryFail>
                <ADB:useDesignTimeConnSetting>true</ADB:useDesignTimeConnSetting>
                <ADB:rpcMaxRows>0</ADB:rpcMaxRows>
                <ADB:scriptFileName>%%ADBScriptFileDir%%\HorizonCM-SiStDataSynchAdapter.sql</ADB:scriptFileName>
                <ADB:termSubject>%%Domain%%.%%Deployment%%.adb.%%InstanceId%%.exit</ADB:termSubject>
            </ADB:agentOptions>
        </ADB:activedb>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
    </ADB:adapter>
    <AEService:rvSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.RV" name="ADBHawkDefault">
        <AEService:daemon>%%TIBHawkDaemon%%</AEService:daemon>
        <AEService:service>%%TIBHawkService%%</AEService:service>
        <AEService:network>%%TIBHawkNetwork%%</AEService:network>
        <AEService:mode>asynchronous</AEService:mode>
    </AEService:rvSession>
    <AEService:jmsSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.JMS" name="JMSQueue">
        <AEService:clientId/>
        <AEService:emsServerUserName/>
        <AEService:emsServerPassword/>
        <AEService:connectionFactorySslPassword/>
        <AEService:connFactoryType>1</AEService:connFactoryType>
        <AEService:connFactoryName>%%HorizonCM_SiStDataSync/JmsSvrCfg/Application/JmsQueueConnectionFactory%%</AEService:connFactoryName>
        <AEService:jndiLookups>false</AEService:jndiLookups>
        <AEService:providerUrl>%%HorizonCM_SiStDataSync/JmsSvrCfg/Application/JmsTCPUrl%%</AEService:providerUrl>
        <AEService:providerCtxFactory>com.tibco.tibjms.naming.TibjmsInitialContextFactory</AEService:providerCtxFactory>
        <AEService:connUsername>%%HorizonCM_SiStDataSync/JmsSvrCfg/Application/JmsUsername%%</AEService:connUsername>
        <AEService:connPassword>%%HorizonCM_SiStDataSync/JmsSvrCfg/Application/JmsPassword%%</AEService:connPassword>
    </AEService:jmsSession>
    <AEService:jmsSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.JMS" name="ADBAgentJmsSession">
        <AEService:clientId/>
        <AEService:emsServerUserName/>
        <AEService:emsServerPassword/>
        <AEService:connectionFactorySslPassword/>
        <AEService:connFactoryType>2</AEService:connFactoryType>
        <AEService:connFactoryName>%%HorizonCM_SiStDataSync/JmsSvrCfg/Application/JmsTopicConnectionFactory%%</AEService:connFactoryName>
        <AEService:jndiLookups>false</AEService:jndiLookups>
        <AEService:providerUrl>%%HorizonCM_SiStDataSync/JmsSvrCfg/Application/JmsTCPUrl%%</AEService:providerUrl>
        <AEService:providerCtxFactory>com.tibco.tibjms.naming.TibjmsInitialContextFactory</AEService:providerCtxFactory>
        <AEService:connUsername>%%HorizonCM_SiStDataSync/JmsSvrCfg/Application/JmsUsername%%</AEService:connUsername>
        <AEService:connPassword>%%HorizonCM_SiStDataSync/JmsSvrCfg/Application/JmsPassword%%</AEService:connPassword>
    </AEService:jmsSession>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="HorizonCM_SiStChildDisabilityAdapter">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.ChildDisability</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_ChildDisability</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="HorizonCM_SiStChildHealthProblemAdapter">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.ChildHealthProblem</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_ChildHealthProblem</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="HorizonCM_SiStVisitAdapter">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.Visit</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_Visit</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="HorizonCM_SiStEducationAdapter">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.Education</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_Education</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="HorizonCM_SiStFamilyMemberAdapter">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.FamilyMember</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_FamilyMember</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="HorizonCM_SiStImmunizationAdapter">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.Immunization</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_Immunization</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="HorizonCM_SiStParticipationSupportAdapter">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.ParticipationSupport</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_ParticipationSupport</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="HorizonCM_SiStTaskAdapter">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.Task</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_Task</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="HorizonCM_SiStChildAdapter">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>%%HorizonCM_SiStDataSync/JmsSvrCfg/Destinations/ADBPrefix%%.Child</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/HorizonCM-SiStDataSynchAdapter.aeschema#class.P_Child</AEService:class>
    </AEService:jmsProducer>
</Repository:repository>