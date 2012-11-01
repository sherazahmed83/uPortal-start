/**
 * Licensed to Jasig under one or more contributor license
 * agreements. See the NOTICE file distributed with this work
 * for additional information regarding copyright ownership.
 * Jasig licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a
 * copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package org.jasig.portal.shell;

public interface PortalShellBuildHelper {

    void dbTest();

    void db(String target, String tablesFile, String dataFile, String scriptFile, boolean dropTables,
            boolean createTables, boolean populateTables);

    void hibernateCreate(String target, String databaseQualifier, String schemaExportBeanName, boolean export,
            String outputFile);

    void hibernateDrop(String target, String schemaExportBeanName, boolean export, String outputFile);

    void hibernateUpdate(String target, String databaseQualifier, String schemaExportBeanName, boolean export,
            String outputFile);

    void dataList(String target, String type);

    void dataExport(String target, String dataDir, String type, String sysid, String logDir);

    void dataImport(String target, String dataDir, String pattern, String file, String logDir);

    void dataDelete(String target, String type, String sysid);

    void deleteUser(String target, String user);

}