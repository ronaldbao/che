--
-- Copyright (c) 2012-2019 Codenvy, S.A.
-- All rights reserved. This program and the accompanying materials
-- are made available under the terms of the Eclipse Public License v1.0
-- which accompanies this distribution, and is available at
-- http://www.eclipse.org/legal/epl-v10.html
--
-- Contributors:
--   Codenvy, S.A. - initial API and implementation
--

CREATE INDEX index_account_type ON account (type);
CREATE INDEX index_workspace_accountid ON workspace (accountid);
